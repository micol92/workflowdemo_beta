/*global QUnit*/

sap.ui.define([
	"workflow-taskui-module/controller/MyTaskUI_DSDemo02.controller"
], function (Controller) {
	"use strict";

	QUnit.module("MyTaskUI_DSDemo02 Controller");

	QUnit.test("I should test the MyTaskUI_DSDemo02 controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
