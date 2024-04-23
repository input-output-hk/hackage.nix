{
  "0.1.0" = {
    sha256 = "5f6480c4184e48b8bf5059ad533818e22d76d2bbd070cadf967413f3a81b9848";
    revisions = {
      r0 = {
        nix = import ../hackage/python-pickle-0.1.0-r0-7ff6287d0cb20d3f3d78c00b000d257399b477977988946ba6b1657c122fb7fc.nix;
        revNum = 0;
        sha256 = "7ff6287d0cb20d3f3d78c00b000d257399b477977988946ba6b1657c122fb7fc";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "e5406a2e8fa753e61656e4ecc27291919a2ec404d280400c31dbc9a431aff75c";
    revisions = {
      r0 = {
        nix = import ../hackage/python-pickle-0.2.0-r0-fde05d4fd565b47460918986f19bd12f289b21d89634b749b57795f197b76780.nix;
        revNum = 0;
        sha256 = "fde05d4fd565b47460918986f19bd12f289b21d89634b749b57795f197b76780";
      };
      default = "r0";
    };
  };
  "0.2.3" = {
    sha256 = "77df7f0892f543ee9969ea00493a979f74f99a4d7f7ff79350ce20aa7d366885";
    revisions = {
      r0 = {
        nix = import ../hackage/python-pickle-0.2.3-r0-d2ca35e7c7a6e07f5ec9189e143352265fde4bf3927e4a4d409e58037e7fb47c.nix;
        revNum = 0;
        sha256 = "d2ca35e7c7a6e07f5ec9189e143352265fde4bf3927e4a4d409e58037e7fb47c";
      };
      default = "r0";
    };
  };
  "0.3.0" = {
    sha256 = "8c34d266bdd558e9999c5d9bf939dd3f4fcd213320e87384cbc1ed537af6635c";
    revisions = {
      r0 = {
        nix = import ../hackage/python-pickle-0.3.0-r0-5763d17d542132f27bcaf59f9d1bab6d39c18824f6135c25e088bdb0419f6b4f.nix;
        revNum = 0;
        sha256 = "5763d17d542132f27bcaf59f9d1bab6d39c18824f6135c25e088bdb0419f6b4f";
      };
      r1 = {
        nix = import ../hackage/python-pickle-0.3.0-r1-bb7fd00f48a6eca8cc52be22ad36c7e06bceaa027d44413555aa63ab49f0160e.nix;
        revNum = 1;
        sha256 = "bb7fd00f48a6eca8cc52be22ad36c7e06bceaa027d44413555aa63ab49f0160e";
      };
      default = "r1";
    };
  };
}