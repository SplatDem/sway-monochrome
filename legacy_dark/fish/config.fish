if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sn_on_start 
  sn
end

set -U fish_greeting "     | Terminal | "

sn_on_start
