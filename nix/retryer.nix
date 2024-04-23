{
  "0.1.0.0" = {
    sha256 = "8644de2c12f8cc1d730b7f070b01c5aef5fe0507eebfc3cad1b5acc4b531dd47";
    revisions = {
      r0 = {
        nix = import ../hackage/retryer-0.1.0.0-r0-f0413b232cd988a536898de850a564e6f098823e065478f3aae55442af33932d.nix;
        revNum = 0;
        sha256 = "f0413b232cd988a536898de850a564e6f098823e065478f3aae55442af33932d";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "f224462d9db633895f39f71e3d48ca398b40285acf86f3e5dedb794d7fa56be7";
    revisions = {
      r0 = {
        nix = import ../hackage/retryer-0.1.0.1-r0-a4aff1a6d537eb737ab93ba6442813460bdcfaf5e322d7236bff460652701959.nix;
        revNum = 0;
        sha256 = "a4aff1a6d537eb737ab93ba6442813460bdcfaf5e322d7236bff460652701959";
      };
      default = "r0";
    };
  };
}