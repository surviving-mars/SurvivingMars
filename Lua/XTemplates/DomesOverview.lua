-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('XTemplate', {
	group = "CCC",
	id = "DomesOverview",
	PlaceObj('XTemplateTemplate', {
		'__context', function (parent, context) return context or {} end,
		'__template', "NewOverlayDlg",
		'MinWidth', 500,
		'InitialMode', "domes",
		'InternalModes', "domes",
	}, {
		PlaceObj('XTemplateTemplate', {
			'__template', "CommandCenterTitle",
			'Title', T(502151872155, --[[XTemplate DomesOverview Title]] "DOMES"),
		}),
		PlaceObj('XTemplateWindow', {
			'__class', "XContentTemplate",
			'Id', "idContent",
			'IdNode', false,
		}, {
			PlaceObj('XTemplateWindow', {
				'__class', "XSizeConstrainedWindow",
			}, {
				PlaceObj('XTemplateWindow', {
					'Margins', box(115, 0, 0, 15),
					'Padding', box(63, 0, 0, 0),
					'Dock', "top",
					'LayoutMethod', "HList",
				}, {
					PlaceObj('XTemplateWindow', {
						'comment', "name",
						'__class', "XText",
						'Padding', box(0, 0, 0, 0),
						'MinWidth', 225,
						'MaxWidth', 225,
						'Clip', false,
						'HandleMouse', false,
						'TextStyle', "OverviewItemSection",
						'Translate', true,
						'Text', T(1000037, --[[XTemplate DomesOverview Text]] "Name"),
						'WordWrap', false,
						'TextVAlign', "center",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "stats: health",
						'__class', "XImage",
						'MinWidth', 65,
						'MinHeight', 34,
						'MaxWidth', 65,
						'MaxHeight', 34,
						'Image', "UI/Icons/Sections/health.tga",
						'ImageFit', "smallest",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "stats: stress",
						'__class', "XImage",
						'MinWidth', 65,
						'MinHeight', 34,
						'MaxWidth', 65,
						'MaxHeight', 34,
						'Image', "UI/Icons/Sections/stress.tga",
						'ImageFit', "smallest",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "stats: comfort",
						'__class', "XImage",
						'MinWidth', 65,
						'MinHeight', 34,
						'MaxWidth', 65,
						'MaxHeight', 34,
						'Image', "UI/Icons/Sections/comfort.tga",
						'ImageFit', "smallest",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "stats: morale",
						'__class', "XImage",
						'Margins', box(0, 0, 25, 0),
						'MinWidth', 65,
						'MinHeight', 34,
						'MaxWidth', 65,
						'MaxHeight', 34,
						'Image', "UI/Icons/Sections/morale.tga",
						'ImageFit', "smallest",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "linked",
						'__class', "XText",
						'Padding', box(0, 0, 0, 0),
						'MinWidth', 90,
						'MaxWidth', 90,
						'Clip', false,
						'HandleMouse', false,
						'TextStyle', "OverviewItemSection",
						'Translate', true,
						'Text', T(660713871764, --[[XTemplate DomesOverview Text]] "Linked"),
						'WordWrap', false,
						'TextHAlign', "center",
						'TextVAlign', "center",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "jobs",
						'__class', "XText",
						'Padding', box(0, 0, 0, 0),
						'MinWidth', 120,
						'MaxWidth', 120,
						'Clip', false,
						'HandleMouse', false,
						'TextStyle', "OverviewItemSection",
						'Translate', true,
						'Text', T(373558539824, --[[XTemplate DomesOverview Text]] "Jobs"),
						'WordWrap', false,
						'TextHAlign', "center",
						'TextVAlign', "center",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "homes",
						'__class', "XText",
						'Padding', box(0, 0, 0, 0),
						'MinWidth', 100,
						'MaxWidth', 100,
						'Clip', false,
						'HandleMouse', false,
						'TextStyle', "OverviewItemSection",
						'Translate', true,
						'Text', T(317859767903, --[[XTemplate DomesOverview Text]] "Homes"),
						'WordWrap', false,
						'TextHAlign', "center",
						'TextVAlign', "center",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "policies",
						'__class', "XText",
						'Padding', box(0, 0, 0, 0),
						'MinWidth', 196,
						'MaxWidth', 196,
						'Clip', false,
						'HandleMouse', false,
						'TextStyle', "OverviewItemSection",
						'Translate', true,
						'Text', T(522650809982, --[[XTemplate DomesOverview Text]] "Policies"),
						'WordWrap', false,
						'TextHAlign', "center",
						'TextVAlign', "center",
					}),
					}),
				PlaceObj('XTemplateWindow', {
					'__class', "XList",
					'Id', "idList",
					'BorderWidth', 0,
					'Padding', box(0, 0, 0, 0),
					'MinWidth', 1079,
					'MaxWidth', 1079,
					'UniformRowHeight', true,
					'Clip', false,
					'Background', RGBA(0, 0, 0, 0),
					'FocusedBackground', RGBA(0, 0, 0, 0),
					'VScroll', "idScroll",
					'ShowPartialItems', false,
				}, {
					PlaceObj('XTemplateForEach', {
						'comment', "domes",
						'array', function (parent, context) local domes = GetCommandCenterDomesList(); parent:ResolveId("idTitle"):SetTitle(T{9812, "<white><count></white> DOMES", count = #domes}) return domes end,
						'__context', function (parent, context, item, i, n) return item end,
						'run_before', function (parent, context, item, i, n)
							NewXVirtualContent(parent, context, "DomeOverviewRow", 1079, 46)
						end,
					}),
					}),
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Id', "idNoResults",
					'Dock', "box",
					'HAlign', "center",
					'VAlign', "center",
					'Visible', false,
					'HandleMouse', false,
					'TextStyle', "InGameTitle",
					'Translate', true,
					'Text', T(12188, --[[XTemplate DomesOverview Text]] "No objects to show."),
				}),
				PlaceObj('XTemplateCode', {
					'run', function (self, parent, context)
						local list = parent:ResolveId("idList")
						parent:ResolveId("idNoResults"):SetVisible(#list == 0)
					end,
				}),
				PlaceObj('XTemplateTemplate', {
					'__template', "ScrollbarNew",
					'Id', "idScroll",
					'Margins', box(99, 0, 0, 0),
					'Target', "idList",
				}),
				}),
			}),
		PlaceObj('XTemplateAction', {
			'ActionId', "back",
			'ActionName', T(4254, --[[XTemplate DomesOverview ActionName]] "BACK"),
			'ActionToolbar', "ActionBar",
			'ActionShortcut', "Escape",
			'ActionGamepad', "ButtonB",
			'OnActionEffect', "back",
		}),
		}),
})

