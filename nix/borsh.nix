{
  "0.1.0" = {
    sha256 = "7f70a3f0beaee8d6e09f598cb25e9a41d8545b413ba173e90f156d617548db5b";
    revisions = {
      r0 = {
        nix = import ../hackage/borsh-0.1.0-r0-941d94cdf4e92926e21d3f8d359f9cc7427356de7f2e19a5899a4f3b54c97db0.nix;
        revNum = 0;
        sha256 = "941d94cdf4e92926e21d3f8d359f9cc7427356de7f2e19a5899a4f3b54c97db0";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "43ca881b87443a9b5512dfbb4264e3675a88736b037666397149a1c7cf967e4b";
    revisions = {
      r0 = {
        nix = import ../hackage/borsh-0.2.0-r0-f961039a5061d3ba428e6c086062fe741b39d6467fdf9c2124312d98c577849c.nix;
        revNum = 0;
        sha256 = "f961039a5061d3ba428e6c086062fe741b39d6467fdf9c2124312d98c577849c";
      };
      default = "r0";
    };
  };
  "0.3.0" = {
    sha256 = "56d2b5d39316e799b6fbff2475526df483f4b38fe705f574ddd0601f678e72f8";
    revisions = {
      r0 = {
        nix = import ../hackage/borsh-0.3.0-r0-50cf4d9d2f59c78afe2382700f4ec26761f09c68d60dcaa0839514661d3a59db.nix;
        revNum = 0;
        sha256 = "50cf4d9d2f59c78afe2382700f4ec26761f09c68d60dcaa0839514661d3a59db";
      };
      r1 = {
        nix = import ../hackage/borsh-0.3.0-r1-c499e4998714daa1e646258c612775b1c03bec78bba91b63f0ad5fd23d0dd439.nix;
        revNum = 1;
        sha256 = "c499e4998714daa1e646258c612775b1c03bec78bba91b63f0ad5fd23d0dd439";
      };
      r2 = {
        nix = import ../hackage/borsh-0.3.0-r2-e0b95d8254271b5e35660c1133d80fe3c77510c99fb2a0f7f008f3db943105d8.nix;
        revNum = 2;
        sha256 = "e0b95d8254271b5e35660c1133d80fe3c77510c99fb2a0f7f008f3db943105d8";
      };
      default = "r2";
    };
  };
}