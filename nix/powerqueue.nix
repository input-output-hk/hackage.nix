{
  "0.1.0.0" = {
    sha256 = "91835dd0495cb47b5a589703e7904104e7001597f06039f87067192fcdb8254c";
    revisions = {
      r0 = {
        nix = import ../hackage/powerqueue-0.1.0.0-r0-491394163a865ebd64ba36f140fecccbeefd810227c327fd8692566f08062b3a.nix;
        revNum = 0;
        sha256 = "491394163a865ebd64ba36f140fecccbeefd810227c327fd8692566f08062b3a";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "d9c40dd39a57689dd2efef1f561e2ca8c771e9db5fab829df06c00795fda14f6";
    revisions = {
      r0 = {
        nix = import ../hackage/powerqueue-0.2.0.0-r0-1b3e9858649206e6e5ab461baad62794633040abb8ca946bccc001914367ae4a.nix;
        revNum = 0;
        sha256 = "1b3e9858649206e6e5ab461baad62794633040abb8ca946bccc001914367ae4a";
      };
      default = "r0";
    };
  };
}