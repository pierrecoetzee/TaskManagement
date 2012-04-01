/* DO NOT MODIFY. This file was compiled Sun, 01 Apr 2012 16:01:29 GMT from
 * /home/pierre/projects/TaskManagement/app/coffeescripts/tasks.coffee
 */

(function() {
  var TaskManager,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  TaskManager = (function() {

    function TaskManager() {
      this.init = __bind(this.init, this);
    }

    TaskManager.prototype.init = function() {
      $("label").css("background-color", "red");
      return $('.datepicker').datepicker({
        dateFormat: 'dd/mm/yy'
      });
    };

    return TaskManager;

  })();

  if (this.Quipper == null) this.Quipper = {};

  this.Quipper.tasks = new TaskManager();

  $(document).ready(this.Quipper.tasks.init);

}).call(this);
