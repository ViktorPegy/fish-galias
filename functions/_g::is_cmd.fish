function _g::is_cmd
    set -l cmd (commandline -opc)
    return (string match -qr '^'(string join '' $argv)'$' "$cmd")
end
