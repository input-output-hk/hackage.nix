{
  "0.1.0" = {
    sha256 = "73815ef9d5fada9b394a9beb47f1fb78169f78a6d44c0e9ce01dfa6945dda79d";
    revisions = {
      r0 = {
        nix = import ../hackage/enumeration-0.1.0-r0-18c687ef0127d2379955c687249c5f7c88f3c487c37ffebf5435e8f44e223716.nix;
        revNum = 0;
        sha256 = "18c687ef0127d2379955c687249c5f7c88f3c487c37ffebf5435e8f44e223716";
      };
      r1 = {
        nix = import ../hackage/enumeration-0.1.0-r1-04d9774c47b26f7689e78f942a2b1a62b34a750261b8946404bb5bf8d75c092d.nix;
        revNum = 1;
        sha256 = "04d9774c47b26f7689e78f942a2b1a62b34a750261b8946404bb5bf8d75c092d";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "14e1a43b0e786a5b2871941d726377f285aa79e97c78c53f0367fe15a3de1e52";
    revisions = {
      r0 = {
        nix = import ../hackage/enumeration-0.2.0-r0-5d9c93bddea659c670a4c87142891d9ae93ff56bb593b3038040af92e24c10aa.nix;
        revNum = 0;
        sha256 = "5d9c93bddea659c670a4c87142891d9ae93ff56bb593b3038040af92e24c10aa";
      };
      default = "r0";
    };
  };
}