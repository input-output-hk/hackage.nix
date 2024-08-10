{
  "0.0.0.1" = {
    sha256 = "6949997b5c4ecf0128c0ab0a0a5780ca33ee31ec3d6e534b76ee27e04149396c";
    revisions = {
      r0 = {
        nix = import ../hackage/freckle-otel-0.0.0.1-r0-1658893ac3317cbb253b10f3329ecfbfe373790ff1ed963e3ae682cfc6aac945.nix;
        revNum = 0;
        sha256 = "1658893ac3317cbb253b10f3329ecfbfe373790ff1ed963e3ae682cfc6aac945";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "9a46b80d9ef97a817d26e9e21e782926bd5ba6707b22d47ae9c8ffbb30e3e074";
    revisions = {
      r0 = {
        nix = import ../hackage/freckle-otel-0.0.0.2-r0-e89dd03fc7a7ab9e69e8eec25743254e66c8510f28837ddec22789cfc3011491.nix;
        revNum = 0;
        sha256 = "e89dd03fc7a7ab9e69e8eec25743254e66c8510f28837ddec22789cfc3011491";
      };
      default = "r0";
    };
  };
}