{
  "0.1.0.0" = {
    sha256 = "ee5c2d40c5072fcdb28688a3674138fb3e6df3802b220e5cb448a656b8655f5e";
    revisions = {
      r0 = {
        nix = import ../hackage/language-asn-0.1.0.0-r0-cdae629422070c5d86e9872ad4ddf45cf7a948a11c8e88ad01f9870d993a0285.nix;
        revNum = 0;
        sha256 = "cdae629422070c5d86e9872ad4ddf45cf7a948a11c8e88ad01f9870d993a0285";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "ef172113f378e9db2b917dd99f7e4542f0436d78bdd3cad2d9423da1b9bbd87a";
    revisions = {
      r0 = {
        nix = import ../hackage/language-asn-0.1.1.0-r0-966e3cf5ae7bd1c69c87c9096e139088b0c8a7d40e393f3cd3a7b0ff1cd10e40.nix;
        revNum = 0;
        sha256 = "966e3cf5ae7bd1c69c87c9096e139088b0c8a7d40e393f3cd3a7b0ff1cd10e40";
      };
      r1 = {
        nix = import ../hackage/language-asn-0.1.1.0-r1-dd99043529a5ee88ac6520eb4350f15f6de133560f3197be17e0b15bad6f179d.nix;
        revNum = 1;
        sha256 = "dd99043529a5ee88ac6520eb4350f15f6de133560f3197be17e0b15bad6f179d";
      };
      default = "r1";
    };
  };
}