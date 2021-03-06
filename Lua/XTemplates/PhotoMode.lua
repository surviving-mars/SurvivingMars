-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('XTemplate', {
	group = "InGame",
	id = "PhotoMode",
	PlaceObj('XTemplateWindow', {
		'__context', function (parent, context) return PhotoObjectCreateAndLoad() end,
		'__class', "XDialog",
		'InitialMode', "properties",
		'InternalModes', "properties, items",
	}, {
		PlaceObj('XTemplateFunc', {
			'name', "Open",
			'func', function (self, ...)
				self.context:Pause()
				if GetTimeFactor() == 0 then
					local dlg = GetMarsPauseDlg()
					if dlg then
						dlg:SetParent(GetInGameInterface())
					end
				end
				XDialog.Open(self, ...)
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "Close",
			'func', function (self, ...)
				PhotoModeEnd()
				XDialog.Close(self, ...)
				if GetTimeFactor() == 0 then
					local dlg = GetMarsPauseDlg()
					if dlg then
						dlg:SetParent(terminal.desktop)
					end
				end
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "BlinkFilePath(self, path)",
			'func', function (self, path)
				self:DeleteThread("path")
				self:CreateThread("path", function(path)
					self.idPath:SetText(path)
					self.idPath:SetVisible(true)
					Sleep(3000)
					self.idPath:SetVisible(false)
				end, path)
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "ToggleUI",
			'func', function (self, ...)
				local value = not self.idFrame:GetVisible()
				self.idFrame:SetVisible(value)
				self.idTint:SetVisible(value)
				if Platform.console then
					self.idActionBar:SetVisible(value)
					self.idFreeCameraWarning:SetVisible(value and cameraFly.IsActive())
				end
				if value then
					self.idList:SetSelection(self.idList.focused_item or 1)
				end
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "OnShortcut(self, shortcut, source)",
			'func', function (self, shortcut, source)
				if not self.idActionBar:GetVisible() and (shortcut == "Start" or shortcut == "ButtonB") then
					self:ToggleUI()
					return "break"
				elseif cameraFly.IsActive() and (shortcut == "Alt" or shortcut == "LeftTrigger") then
					if g_MouseConnected then
						SetMouseDeltaMode(false)
					end
					return "break"
				elseif cameraFly.IsActive() and (shortcut == "-Alt" or shortcut == "-LeftTrigger") then
					if g_MouseConnected then
						SetMouseDeltaMode(true)
					end
					return "break"
				end
				return XDialog.OnShortcut(self, shortcut, source)
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'HAlign', "left",
		}, {
			PlaceObj('XTemplateLayer', {
				'layer', "XHideInGameInterfaceLayer",
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XFrame",
				'Id', "idTint",
				'Margins', box(0, 0, -650, 0),
				'Dock', "box",
				'Image', "UI/CommonNew/menu_background.tga",
			}),
			PlaceObj('XTemplateWindow', {
				'Id', "idFrame",
				'Margins', box(60, 68, 150, 80),
				'HAlign', "left",
				'MinWidth', 550,
				'LayoutMethod', "VList",
				'HandleMouse', true,
			}, {
				PlaceObj('XTemplateFunc', {
					'name', "Open",
					'func', function (self, ...)
						XWindow.Open(self, ...)
						local pad = self:GetMargins()
						local margin = GetSafeMargins(pad)
						self:SetMargins(margin)
					end,
				}),
				PlaceObj('XTemplateTemplate', {
					'__template', "DialogTitleNew",
					'Margins', box(55, 0, 0, 0),
					'Title', T(801206194403, --[[XTemplate PhotoMode Title]] "PHOTO MODE"),
					'SmallImage', true,
				}),
				PlaceObj('XTemplateWindow', {
					'Margins', box(0, 30, 0, 40),
					'Dock', "top",
				}, {
					PlaceObj('XTemplateWindow', {
						'__class', "XContentTemplateList",
						'Id', "idList",
						'Margins', box(39, 0, 0, 0),
						'BorderWidth', 0,
						'Padding', box(0, 0, 0, 0),
						'LayoutVSpacing', 16,
						'UniformRowHeight', true,
						'Clip', false,
						'Background', RGBA(0, 0, 0, 0),
						'FocusedBackground', RGBA(0, 0, 0, 0),
						'VScroll', "idScroll",
						'ShowPartialItems', false,
						'MouseScroll', true,
						'LeftThumbScroll', false,
						'OnContextUpdate', function (self, context, ...)
							XContentTemplateList.OnContextUpdate(self, context, ...)
							if self.focused_item then
								self.focused_item =  Min(self.focused_item, #self)
								self:DeleteThread("select")
								self:CreateThread("select", function()
									self:SetSelection(self.focused_item)
								end)
							end
						end,
						'RespawnOnContext', false,
					}, {
						PlaceObj('XTemplateMode', {
							'mode', "properties",
						}, {
							PlaceObj('XTemplateForEach', {
								'comment', "props",
								'array', function (parent, context) return context:GetProperties() end,
								'condition', function (parent, context, item, i) return not item.filter or item.filter() end,
								'item_in_context', "prop_meta",
							}, {
								PlaceObj('XTemplateTemplate', {
									'__template', "PropEntry",
									'RolloverTemplate', "Rollover",
								}, {
									PlaceObj('XTemplateWindow', {
										'__class', "XFrame",
										'Id', "idRollover",
										'ZOrder', 0,
										'Margins', box(-35, -15, 0, -5),
										'Dock', "box",
										'MinWidth', 448,
										'Visible', false,
										'Image', "UI/CommonNew/pg_selection.tga",
										'FrameBox', box(50, 0, 178, 0),
										'TileFrame', true,
									}),
									}),
								}),
							PlaceObj('XTemplateAction', {
								'ActionId', "close",
								'ActionName', T(4523, --[[XTemplate PhotoMode ActionName]] "CLOSE"),
								'ActionToolbar', "ActionBar",
								'ActionShortcut', "Escape",
								'ActionGamepad', "ButtonB",
								'OnActionEffect', "close",
							}),
							}),
						PlaceObj('XTemplateMode', {
							'mode', "items",
						}, {
							PlaceObj('XTemplateForEach', {
								'comment', "item",
								'array', function (parent, context) return GetDialogModeParam(parent).items() end,
								'condition', function (parent, context, item, i) return not item.not_selectable end,
								'__context', function (parent, context, item, i, n) return item end,
							}, {
								PlaceObj('XTemplateTemplate', {
									'__template', "MenuEntrySmall",
									'RolloverTemplate', "Rollover",
									'OnPress', function (self, gamepad)
										local prop_meta = GetDialogModeParam(self)
										local obj = GetDialogContext(self)
										SetProperty(obj, prop_meta.id, self.context.value)
										SetBackDialogMode(self)
									end,
									'TextStyle', "ListItem3",
									'Text', T(730563403228, --[[XTemplate PhotoMode Text]] "<text>"),
								}),
								}),
							PlaceObj('XTemplateAction', {
								'ActionId', "back",
								'ActionName', T(4254, --[[XTemplate PhotoMode ActionName]] "BACK"),
								'ActionToolbar', "ActionBar",
								'ActionShortcut', "Escape",
								'ActionGamepad', "ButtonB",
								'OnActionEffect', "back",
							}),
							}),
						}),
					PlaceObj('XTemplateTemplate', {
						'__template', "ScrollbarNew",
						'Id', "idScroll",
						'Target', "idList",
					}),
					}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idActionBar",
				'Margins', box(60, 0, 0, 25),
				'HAlign', "left",
				'VAlign', "bottom",
			}, {
				PlaceObj('XTemplateFunc', {
					'name', "Open",
					'func', function (self, ...)
						XWindow.Open(self, ...)
						self:SetMargins(GetSafeMargins(self:GetMargins()))
					end,
				}),
				PlaceObj('XTemplateWindow', {
					'__class', "XFrame",
					'Margins', box(-300, 0, -150, 0),
					'MinWidth', 623,
					'Image', "UI/CommonNew/pg_action_bar.tga",
					'FrameBox', box(42, 0, 341, 0),
					'TileFrame', true,
					'SqueezeY', false,
				}),
				PlaceObj('XTemplateWindow', {
					'__class', "XToolBar",
					'Id', "idToolbar",
					'Margins', box(55, 0, 0, 0),
					'HAlign', "left",
					'VAlign', "center",
					'LayoutHSpacing', 60,
					'Background', RGBA(0, 0, 0, 0),
					'Toolbar', "ActionBar",
					'Show', "text",
					'ButtonTemplate', "MenuEntry",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'__condition', function (parent, context) return not UseGamepadUI() end,
				'__class', "XText",
				'Id', "idFreeCameraWarning",
				'Margins', box(80, 0, 0, 0),
				'Padding', box(0, 0, 0, 0),
				'HAlign', "left",
				'VAlign', "bottom",
				'Visible', false,
				'HandleMouse', false,
				'TextStyle', "PhotoModeWarning",
				'Translate', true,
				'Text', T(522319645304, --[[XTemplate PhotoMode Text]] "<em><ShortcutName('actionPanUp')>, <ShortcutName('actionPanDown')>, <ShortcutName('actionPanLeft')>, <ShortcutName('actionPanRight')></em> Move, hold <em>Ctrl</em> Move faster, hold <em>Alt</em> Release mouse cursor."),
			}),
			PlaceObj('XTemplateWindow', {
				'__condition', function (parent, context) return UseGamepadUI() and not UseHybridControls() end,
				'__class', "XText",
				'Id', "idFreeCameraWarning",
				'Margins', box(80, 0, 0, 0),
				'Padding', box(0, 0, 0, 0),
				'HAlign', "left",
				'VAlign', "bottom",
				'Visible', false,
				'HandleMouse', false,
				'TextStyle', "PhotoModeWarning",
				'Translate', true,
				'Text', T(650277449050, --[[XTemplate PhotoMode Text]] "<LS> - move, <RS> - rotate."),
			}),
			PlaceObj('XTemplateWindow', {
				'__condition', function (parent, context) return UseGamepadUI() and UseHybridControls() end,
				'__class', "XText",
				'Id', "idFreeCameraWarning",
				'Margins', box(80, 0, 0, 0),
				'Padding', box(0, 0, 0, 0),
				'HAlign', "left",
				'VAlign', "bottom",
				'Visible', false,
				'HandleMouse', false,
				'TextStyle', "PhotoModeWarning",
				'Translate', true,
				'Text', T(11872, --[[XTemplate PhotoMode Text]] "<LS> - move, <RS> - rotate, hold <LT> - release mouse cursor."),
			}),
			PlaceObj('XTemplateAction', {
				'ActionId', "idReset",
				'ActionName', T(5469, --[[XTemplate PhotoMode ActionName]] "RESET"),
				'ActionToolbar', "ActionBar",
				'ActionGamepad', "LeftShoulder",
				'OnAction', function (self, host, source)
					host.context:ResetProperties()
					host.idList:RespawnContent()
				end,
			}),
			PlaceObj('XTemplateAction', {
				'ActionId', "idTakeScreenshot",
				'ActionName', T(954580699514, --[[XTemplate PhotoMode ActionName]] "TAKE SCREENSHOT"),
				'ActionToolbar', "ActionBar",
				'ActionGamepad', "LeftTrigger",
				'OnAction', function (self, host, source)
					local meta = host.context:GetPropertyMetadata("frameDuration")
					PhotoModeTake(host.context.frameDuration, meta.max)
				end,
				'__condition', function (parent, context) return not Platform.console or g_PhotoModeChallengeId end,
			}),
			PlaceObj('XTemplateAction', {
				'ActionId', "idToggleUI",
				'ActionName', T(357021532351, --[[XTemplate PhotoMode ActionName]] "TOGGLE UI"),
				'ActionToolbar', "ActionBar",
				'ActionGamepad', "ButtonX",
				'OnAction', function (self, host, source)
					host:ToggleUI()
				end,
			}),
			PlaceObj('XTemplateAction', {
				'ActionId', "idPause",
				'ActionName', T(494688646361, --[[XTemplate PhotoMode ActionName]] "PAUSE"),
				'ActionToolbar', "ActionBar",
				'ActionShortcut', "Space",
				'ActionGamepad', "ButtonY",
				'ActionState', function (self, host)
					return GetTimeFactor() == 0 and "hidden"
				end,
				'OnAction', function (self, host, source)
					host.context:Pause()
					host.idList:RespawnContent()
				end,
			}),
			PlaceObj('XTemplateAction', {
				'ActionId', "idResume",
				'ActionName', T(326024522451, --[[XTemplate PhotoMode ActionName]] "RESUME"),
				'ActionToolbar', "ActionBar",
				'ActionShortcut', "Space",
				'ActionGamepad', "ButtonY",
				'ActionState', function (self, host)
					return GetTimeFactor() ~= 0 and "hidden"
				end,
				'OnAction', function (self, host, source)
					host.context:Resume()
					host.idList:RespawnContent()
				end,
			}),
			}),
		PlaceObj('XTemplateWindow', {
			'__class', "XLabel",
			'Id', "idPath",
			'Margins', box(0, 0, 0, 200),
			'HAlign', "center",
			'VAlign', "bottom",
			'Visible', false,
			'TextStyle', "PhotoModeWarning",
		}),
		}),
})

