# cardano-systemd

Systemd service units for the Marlowe PAB and all of its dependencies
(cardano-node, cardano-wallet, chain-index)

## Using this project

1. Copy (or symlink) the service files to `$HOME/.config/systemd/user/`
2. Reload the user systemd daemon `$ systemctl --user daemon-reload`

This project includes a control script, `marlowectl`, which provides high-level
commands to start everything up or shut it all down. And also to
start/stop/restart the `marlowe-pab` service alone, which is useful for
development where you can leave the rest of the node and support services
running.

The service units are written to depend on each other and won't get into a
state where they're started without a dependency also running. To work without
the script:

Start everything up

    $ systemctl --user start marlowe-pab

Shut everything down

    $ systemctl --user stop cardano-node

## Contact

Dino Morelli <mailto:dino.morelli@iohk.io>
