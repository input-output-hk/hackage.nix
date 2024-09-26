{
  "0.1.0.0" = {
    sha256 = "5cc09d22ca9ca5f549535ba827e757be250b1fd1dfc8abbb8a96aa4970336f70";
    revisions = {
      r0 = {
        nix = import ../hackage/librarian-0.1.0.0-r0-a482d22ab92c06045b9ea64d97dbadbbd7807599e7d51ba1f5188d31da45749d.nix;
        revNum = 0;
        sha256 = "a482d22ab92c06045b9ea64d97dbadbbd7807599e7d51ba1f5188d31da45749d";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "5b1cc6772f815aaf8c031bb31f5693d34d999c8bb21262a89849383abbbb079b";
    revisions = {
      r0 = {
        nix = import ../hackage/librarian-0.1.0.1-r0-1f0816485c934af207d38aefe6813d8e87c479abaf9e752583457d4940b5790f.nix;
        revNum = 0;
        sha256 = "1f0816485c934af207d38aefe6813d8e87c479abaf9e752583457d4940b5790f";
      };
      default = "r0";
    };
  };
}