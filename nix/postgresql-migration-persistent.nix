{
  "1.0.0" = {
    sha256 = "206d77dc4f30eff4d6f16e005420f96e946ef7f6d13fa35aed4dcc5ad323de7b";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-migration-persistent-1.0.0-r0-8a1b91610d348ef3f0028515894f400e9e85b83296889e118299ccca577ddd5d.nix;
        revNum = 0;
        sha256 = "8a1b91610d348ef3f0028515894f400e9e85b83296889e118299ccca577ddd5d";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "357f9431cc481864092921240ee412a1e2386408681dd8d7d432f3341f04f158";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-migration-persistent-1.1.0-r0-103c16fd865a06c4d71010c5df87501818cf3c875cdb30eab5380b73102f8e39.nix;
        revNum = 0;
        sha256 = "103c16fd865a06c4d71010c5df87501818cf3c875cdb30eab5380b73102f8e39";
      };
      default = "r0";
    };
  };
}