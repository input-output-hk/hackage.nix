{
  "0.1.0.0" = {
    sha256 = "880a8389b7faadb856031eeda010d7a1f1d36531a60565528fe1e6c407de3d04";
    revisions = {
      r0 = {
        nix = import ../hackage/skip-list-0.1.0.0-r0-93ed523a02f602622c57b3741820d877c7b49094aa200d9ed666dec02d545be7.nix;
        revNum = 0;
        sha256 = "93ed523a02f602622c57b3741820d877c7b49094aa200d9ed666dec02d545be7";
      };
      r1 = {
        nix = import ../hackage/skip-list-0.1.0.0-r1-8885c64a8798929fe9ecafd1e88e55133232e50dbf30e439c10026e266502331.nix;
        revNum = 1;
        sha256 = "8885c64a8798929fe9ecafd1e88e55133232e50dbf30e439c10026e266502331";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "b0b70422d76a2a5445b503fefdc93579e15703adf16b2675b0a7a4c381cdacd9";
    revisions = {
      r0 = {
        nix = import ../hackage/skip-list-0.1.0.1-r0-88283e675b04120625c21388398b0fceb9b8a988d3fa2e023029073af5070c4d.nix;
        revNum = 0;
        sha256 = "88283e675b04120625c21388398b0fceb9b8a988d3fa2e023029073af5070c4d";
      };
      default = "r0";
    };
  };
}