# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/class


class TaskManager
  init: =>
    $('.datepicker').datepicker({dateFormat: 'dd/mm/yy'});
    alert('')


@Quipper = {} unless @Quipper?
@Quipper.tasks =new TaskManager();
$(document).ready @Quipper.tasks.init

