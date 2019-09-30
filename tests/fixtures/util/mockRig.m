function [rig, behaviour] = mockRig(testCase)
% TODO Call this from calibrate_test
% TODO Make into Fixture

rig = struct;

% Window
[rig.stimWindow, behaviour.stimWindow] = createMock(testCase, ?hw.Window);

% Timeline
[rig.timeline, behaviour.timeline] = createMock(testCase, ...
  'AddedProperties', properties(hw.Timeline)', ...
  'AddedMethods', methods(hw.Timeline)');

% mouseInput
[rig.mouseInput, behaviour.mouseInput] = createMock(testCase, ...
  'AddedProperties', properties(hw.DaqRotaryEncoder)', ...
  'AddedMethods', methods(hw.DaqRotaryEncoder)');

% scale
[rig.scale, behaviour.scale] = createMock(testCase, ...
  'AddedProperties', properties(hw.WeighingScale)', ...
  'AddedMethods', methods(hw.WeighingScale)');

% daqController
[rig.daqController, behaviour.daqController] = ...
  createMock(testCase, ...
  'AddedProperties', properties(hw.DaqController)', ...
  'AddedMethods', methods(hw.DaqController)');

% RewardValveControl
[rig.daqController.SignalGenerators, behaviour.RewardValveControl] = ...
  createMock(testCase, ...
  'AddedProperties', properties(hw.RewardValveControl)', ...
  'AddedMethods', methods(hw.RewardValveControl)');

% communicator
[rig.communicator, behaviour.communicator] = ...
  createMock(testCase, ?io.Communicator);
% [rig.communicator, behaviour.communicator] = createMock(testCase, ...
%   'AddedProperties', properties(io.WSJCommunicator)', ...
%   'AddedMethods', methods(io.WSJCommunicator)');

