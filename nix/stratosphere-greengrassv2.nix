{
  "1.0.0" = {
    sha256 = "806d38005cf70a2e46303cfb3866165771d9a9580aaf65e017602278b322cb14";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-greengrassv2-1.0.0-r0-20cf026e640cc6b0573237a68f183459bfe69a2bfe821087163260bb65cbcec5.nix;
        revNum = 0;
        sha256 = "20cf026e640cc6b0573237a68f183459bfe69a2bfe821087163260bb65cbcec5";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "34936966c4d70816d3a393eedf5a947d7c29c15f5632f2d19ff73e93cb993def";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-greengrassv2-1.0.1-r0-d112f708488cd8da71dad5673315fb5ca315c27239075dca7bbd3c5125292c5e.nix;
        revNum = 0;
        sha256 = "d112f708488cd8da71dad5673315fb5ca315c27239075dca7bbd3c5125292c5e";
      };
      default = "r0";
    };
  };
}