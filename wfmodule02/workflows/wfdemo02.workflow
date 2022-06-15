{
	"contents": {
		"98648c32-e4c9-4d46-9220-a492f215edf0": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfdemo02",
			"subject": "wfdemo02",
			"name": "wfdemo02",
			"documentation": "ds workflow demo02",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"abac1d2f-6552-44e2-982c-9e2dc68cc6e1": {
					"name": "UserTask1"
				},
				"05061260-7f2d-440d-83f4-067806e1c6a9": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"5baccb33-b9f4-42fd-b0e6-d12306234379": {
					"name": "SequenceFlow2"
				},
				"39498089-fdbd-4397-8279-a332424b2ccb": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"abac1d2f-6552-44e2-982c-9e2dc68cc6e1": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "wfdemo02",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://dsapprouter02.taskui2/taskui2",
			"recipientUsers": "${info.startedBy}",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"05061260-7f2d-440d-83f4-067806e1c6a9": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "smgate_api",
			"path": "/catalog-service2/SMTOPGAME",
			"httpMethod": "POST",
			"requestVariable": "${context.itemGroup}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "abac1d2f-6552-44e2-982c-9e2dc68cc6e1"
		},
		"5baccb33-b9f4-42fd-b0e6-d12306234379": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "abac1d2f-6552-44e2-982c-9e2dc68cc6e1",
			"targetRef": "05061260-7f2d-440d-83f4-067806e1c6a9"
		},
		"39498089-fdbd-4397-8279-a332424b2ccb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "05061260-7f2d-440d-83f4-067806e1c6a9",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"ec8c09d4-b580-4b3f-bd07-db8b2bfbb6d1": {},
				"b2855b58-d61b-4d33-bc10-4aa9a89e1244": {},
				"875c5a41-29fb-4d1a-a95a-a3949aa5b32d": {},
				"0afebcc1-99fb-4bcc-be91-eff09ffa1b0a": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 565,
			"y": 86,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 209,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "ec8c09d4-b580-4b3f-bd07-db8b2bfbb6d1",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"ec8c09d4-b580-4b3f-bd07-db8b2bfbb6d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 159,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "abac1d2f-6552-44e2-982c-9e2dc68cc6e1"
		},
		"b2855b58-d61b-4d33-bc10-4aa9a89e1244": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "209,116 393,116",
			"sourceSymbol": "ec8c09d4-b580-4b3f-bd07-db8b2bfbb6d1",
			"targetSymbol": "875c5a41-29fb-4d1a-a95a-a3949aa5b32d",
			"object": "5baccb33-b9f4-42fd-b0e6-d12306234379"
		},
		"875c5a41-29fb-4d1a-a95a-a3949aa5b32d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 343,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "05061260-7f2d-440d-83f4-067806e1c6a9"
		},
		"0afebcc1-99fb-4bcc-be91-eff09ffa1b0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "393,116 504.25,116 504.25,103.5 582.5,103.5",
			"sourceSymbol": "875c5a41-29fb-4d1a-a95a-a3949aa5b32d",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "39498089-fdbd-4397-8279-a332424b2ccb"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		}
	}
}