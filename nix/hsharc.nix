{
  "0.11" = {
    sha256 = "2206c9c3c983dbe8549b5ebd9cbe6aff6fb50dde13c2b6b662f109aee2d81370";
    revisions = {
      r0 = {
        nix = import ../hackage/hsharc-0.11-r0-8a8bd2cca7a4a2ba07ee80d11d49619e8cc3f9cb27ee6b16a3d90d552e29c092.nix;
        revNum = 0;
        sha256 = "8a8bd2cca7a4a2ba07ee80d11d49619e8cc3f9cb27ee6b16a3d90d552e29c092";
      };
      default = "r0";
    };
  };
  "0.12" = {
    sha256 = "649d9a01bbdafa0bb0d08687b33cd265dc54a4c8253b46231ba689ebbe356173";
    revisions = {
      r0 = {
        nix = import ../hackage/hsharc-0.12-r0-0cb2d4d5bfdebe8c5ccbe890c54763e4dac8302a044e6c8069beb5a56bc83416.nix;
        revNum = 0;
        sha256 = "0cb2d4d5bfdebe8c5ccbe890c54763e4dac8302a044e6c8069beb5a56bc83416";
      };
      default = "r0";
    };
  };
  "0.14" = {
    sha256 = "6e1b64b855ccadd417305ded3a4b08fd833a99f9f8ed6c3cbb88fc18c901f1d7";
    revisions = {
      r0 = {
        nix = import ../hackage/hsharc-0.14-r0-bef10fe93e4ce5c7e35a11027f100c6bf3e0e447b559b6116af324c639767f9f.nix;
        revNum = 0;
        sha256 = "bef10fe93e4ce5c7e35a11027f100c6bf3e0e447b559b6116af324c639767f9f";
      };
      default = "r0";
    };
  };
}