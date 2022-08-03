{
  "0.0.0" = {
    sha256 = "78767faf0a9eb2f5a357d332f09ba0f8bc0ac192ccafc832490831e1cd621e8a";
    revisions = {
      r0 = {
        nix = import ../hackage/ical-0.0.0-r0-ffe16b2ee1cf9edbd134aab8d7d54425d3e672d31e25540f4685e10aec8bdc42.nix;
        revNum = 0;
        sha256 = "ffe16b2ee1cf9edbd134aab8d7d54425d3e672d31e25540f4685e10aec8bdc42";
        };
      r1 = {
        nix = import ../hackage/ical-0.0.0-r1-b0e8e95f4da241fd5b16901beb4b06077f14243cd8c3176b5796d90cc075020f.nix;
        revNum = 1;
        sha256 = "b0e8e95f4da241fd5b16901beb4b06077f14243cd8c3176b5796d90cc075020f";
        };
      default = "r1";
      };
    };
  "0.0.1" = {
    sha256 = "f5e45df4249aa90a87080ef6714d77d8e961c5ba50e6813062379fcdaea7d882";
    revisions = {
      r0 = {
        nix = import ../hackage/ical-0.0.1-r0-e7cf9f7343b9eb10ad46a3e83467a0c5c08aeecca3d3e261d8ca9e3b99cb3a43.nix;
        revNum = 0;
        sha256 = "e7cf9f7343b9eb10ad46a3e83467a0c5c08aeecca3d3e261d8ca9e3b99cb3a43";
        };
      r1 = {
        nix = import ../hackage/ical-0.0.1-r1-2973b595381ff5a7830350985425450759abd17a782156679bc1311d4b1db06b.nix;
        revNum = 1;
        sha256 = "2973b595381ff5a7830350985425450759abd17a782156679bc1311d4b1db06b";
        };
      default = "r1";
      };
    };
  }