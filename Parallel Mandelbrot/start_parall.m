function  start_parall
poolobj = gcp('nocreate');
if isempty(poolobj)
    parpool(12);
end;