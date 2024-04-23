{
  "0.1.0" = {
    sha256 = "2fdeea312296197113c173b90db4359562c59c58e97b44d86539ec142bf83238";
    revisions = {
      r0 = {
        nix = import ../hackage/hosts-server-0.1.0-r0-1c274159fb8dabf5a120e2b5340aaede3b1e2aa70f45751156164b692528e840.nix;
        revNum = 0;
        sha256 = "1c274159fb8dabf5a120e2b5340aaede3b1e2aa70f45751156164b692528e840";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "1eab2b1e7cfdb7e32494323008a0957dc5399568a009bdf5a83816868a7ab3bc";
    revisions = {
      r0 = {
        nix = import ../hackage/hosts-server-0.1.1-r0-0f13d737491ebda0111505147c7f618918ecb1db8551cc0e65b929e07779aa0b.nix;
        revNum = 0;
        sha256 = "0f13d737491ebda0111505147c7f618918ecb1db8551cc0e65b929e07779aa0b";
      };
      default = "r0";
    };
  };
}