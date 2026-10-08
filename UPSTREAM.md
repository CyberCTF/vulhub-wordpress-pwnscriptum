# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `wordpress/pwnscriptum` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`wordpress/pwnscriptum`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/wordpress/pwnscriptum) |
| `base/wordpress/4.6/` | [`base/wordpress/4.6`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/wordpress/4.6): the Dockerfile of `vulhub/wordpress:4.6` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/wordpress:4.6`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

`build/web/Dockerfile` (from `vulhub/wordpress:4.6`) and `build/mysql/Dockerfile` (from `mysql:5`, the tag Vulhub uses) set, as `ENV`, the environment values of Vulhub's compose file (Isoloom has no `environment:`). The exploit script (`exploit.py`) is vendored and not used by the lab.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
