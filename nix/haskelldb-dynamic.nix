{
  "0.10" = {
    sha256 = "c8e7c495657913b11694edabf80707a010d7d359fed6ab534f31d05fed874bc7";
    revisions = {
      r0 = {
        nix = import ../hackage/haskelldb-dynamic-0.10-r0-8818d4e9bf2e36ea2607444a307c90cfea9c09229f74105b98ee84f6c3ab501e.nix;
        revNum = 0;
        sha256 = "8818d4e9bf2e36ea2607444a307c90cfea9c09229f74105b98ee84f6c3ab501e";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "caa84303097f958a7b019a6c3458a85db20d747288941616774265253bf7b171";
    revisions = {
      r0 = {
        nix = import ../hackage/haskelldb-dynamic-1.0.0-r0-fc9dc27731220d732034f062fad6e5eb50e3eb0ece5b1acc24cae25fab6051d7.nix;
        revNum = 0;
        sha256 = "fc9dc27731220d732034f062fad6e5eb50e3eb0ece5b1acc24cae25fab6051d7";
      };
      default = "r0";
    };
  };
}