-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('XTemplate', {
	group = "InGame",
	id = "Infobar",
	PlaceObj('XTemplateWindow', {
		'__class', "Infobar",
		'ZOrder', 150,
		'FocusOnOpen', "",
	}, {
		PlaceObj('XTemplateWindow', {
			'__context', function (parent, context) return parent end,
			'__class', "XFrame",
			'Id', "idPad",
			'Margins', box(-274, 0, -274, 0),
			'Padding', box(274, 0, 274, 0),
			'HAlign', "center",
			'VAlign', "top",
			'MaxHeight', 30,
			'LayoutMethod', "HList",
			'HandleMouse', true,
			'Image', "UI/Common/bm_pad.tga",
			'FrameBox', box(274, 109, 274, 3),
			'SqueezeX', false,
			'FlipY', true,
		}, {
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'RolloverTemplate', "Rollover",
				'RolloverAnchor', "bottom",
				'RolloverText', T{180475027963, --[[XTemplate Infobar RolloverText]] "<FundingRollover>"},
				'RolloverTitle', T{726290861385, --[[XTemplate Infobar RolloverTitle]] "Funding"},
				'Id', "idFunding",
				'Padding', box(2, 4, 2, 4),
				'MinWidth', 55,
				'TextFont', "OnScreenText",
				'TextColor', RGBA(255, 254, 171, 255),
				'RolloverTextColor', RGBA(255, 254, 171, 255),
				'Translate', true,
				'Text', T{325404562808, --[[XTemplate Infobar Text]] "<FundingText>"},
				'TextHAlign', "center",
				'TextVAlign', "center",
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'RolloverTemplate', "Rollover",
				'RolloverAnchor', "bottom",
				'RolloverText', T{348303624799, --[[XTemplate Infobar RolloverText]] "<ResearchRollover>"},
				'RolloverTitle', T{711878045401, --[[XTemplate Infobar RolloverTitle]] "Research"},
				'Id', "idResearch",
				'Padding', box(2, 4, 2, 4),
				'MinWidth', 130,
				'TextFont', "OnScreenText",
				'TextColor', RGBA(255, 254, 171, 255),
				'RolloverTextColor', RGBA(255, 254, 171, 255),
				'Translate', true,
				'Text', T{212300384149, --[[XTemplate Infobar Text]] "<ResearchText>"},
				'TextHAlign', "center",
				'TextVAlign', "center",
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'RolloverTemplate', "Rollover",
				'RolloverAnchor', "bottom",
				'RolloverText', T{942443234329, --[[XTemplate Infobar RolloverText]] "<GridResourcesRollover>"},
				'RolloverTitle', T{542251538468, --[[XTemplate Infobar RolloverTitle]] "Grid Resources"},
				'Id', "idGridResources",
				'Padding', box(2, 4, 2, 4),
				'MinWidth', 185,
				'TextFont', "OnScreenText",
				'TextColor', RGBA(255, 254, 171, 255),
				'RolloverTextColor', RGBA(255, 254, 171, 255),
				'Translate', true,
				'Text', T{374440054184, --[[XTemplate Infobar Text]] "<GridResourcesText>"},
				'TextHAlign', "center",
				'TextVAlign', "center",
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'RolloverTemplate', "Rollover",
				'RolloverAnchor', "bottom",
				'RolloverText', T{953941296350, --[[XTemplate Infobar RolloverText]] "<BasicResourcesRollover>"},
				'RolloverTitle', T{736335290668, --[[XTemplate Infobar RolloverTitle]] "Basic Resources"},
				'Id', "idBasicResources",
				'Padding', box(2, 4, 2, 4),
				'MinWidth', 250,
				'TextFont', "OnScreenText",
				'TextColor', RGBA(255, 254, 171, 255),
				'RolloverTextColor', RGBA(255, 254, 171, 255),
				'Translate', true,
				'Text', T{926044160768, --[[XTemplate Infobar Text]] "<BasicResourcesText>"},
				'TextHAlign', "center",
				'TextVAlign', "center",
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'RolloverTemplate', "Rollover",
				'RolloverAnchor', "bottom",
				'RolloverText', T{560862383573, --[[XTemplate Infobar RolloverText]] "<AdvancedResourcesRollover>"},
				'RolloverTitle', T{515361463921, --[[XTemplate Infobar RolloverTitle]] "Advanced Resources"},
				'Id', "idAdvancedResources",
				'Padding', box(2, 4, 2, 4),
				'MinWidth', 250,
				'TextFont', "OnScreenText",
				'TextColor', RGBA(255, 254, 171, 255),
				'RolloverTextColor', RGBA(255, 254, 171, 255),
				'Translate', true,
				'Text', T{717135433649, --[[XTemplate Infobar Text]] "<AdvancedResourcesText>"},
				'TextHAlign', "center",
				'TextVAlign', "center",
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'RolloverTemplate', "Rollover",
				'RolloverAnchor', "bottom",
				'RolloverText', T{866401335740, --[[XTemplate Infobar RolloverText]] "<ColonistsRollover>"},
				'RolloverTitle', T{460864412954, --[[XTemplate Infobar RolloverTitle]] "Colonists<right><colonist(ColonistCount)>"},
				'Id', "idColonists",
				'Padding', box(2, 4, 2, 4),
				'MinWidth', 250,
				'TextFont', "OnScreenText",
				'TextColor', RGBA(255, 254, 171, 255),
				'RolloverTextColor', RGBA(255, 254, 171, 255),
				'Translate', true,
				'Text', T{415839782254, --[[XTemplate Infobar Text]] "<ColonistsText>"},
				'TextHAlign', "center",
				'TextVAlign', "center",
			}),
			}),
		}),
})

