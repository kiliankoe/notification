# 🛎 notification

This is a tiny CLI tool to read all or specified `NSNotification`s that are flying around through `DistributedNotificationCenter` on your macOS system.

## Usage

```shell
$ notification 
# Will output all notifications it receives

$ notification com.apple.iTunes.playerInfo
# Will only output notifications with the specified ID
```

