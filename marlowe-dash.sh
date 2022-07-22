tmux -T 256,focus,title \
  new-session -s marlowe-logs "journalctl --user -u marlowe-pab -f" \; \
  select-pane -T "marlowe-pab" \; \
  set pane-border-status top \; \
  set pane-border-format "#{pane_index} #T" \; \
  setw remain-on-exit on \; \
  split-window "journalctl --user -u chain-index -f" \; \
  select-pane -T "chain-index" \; \
  split-window -h "journalctl --user -u cardano-wallet -f" \; \
  select-pane -T "cardano-wallet" \; \
  split-window -h "journalctl --user -u cardano-node -f" \; \
  select-pane -T "cardano-node" \; \
  select-pane -L \; \
  select-pane -L \; \
  split-window -h \;
