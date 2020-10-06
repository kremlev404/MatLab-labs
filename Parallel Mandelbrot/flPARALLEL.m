function [fl] = flPARALLEL(varargin)
persistent fl_;
if ~isempty(varargin), fl_ = varargin{1};end;
fl=fl_;