# cardano-systemd

Systemd service units and scripts for the Marlowe PAB and all of its
dependencies (cardano-node, cardano-wallet, cardano-chain-index)

## Using this project

1. Copy the service files to `$HOME/.config/systemd/user/` and the scripts to
   `$HOME/.local/bin`
2. Reload the user systemd daemon `$ systemctl --user daemon-reload`
3. Start everything up `$ systemctl --user start marlowe-pab`

To stop everything: `$ systemctl --user stop cardano-node`. All of the services
depend on this one and will be stopped as well.
