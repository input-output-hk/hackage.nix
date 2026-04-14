{
  "0.1.0" = {
    sha256 = "504c3602cc588fb1a0608b134aeb32a6518d0c2cb042cf060219745b25f0bc8d";
    revisions = {
      r0 = {
        nix = import ../hackage/hatter-0.1.0-r0-4b026f0d71cf21e9130932f617f85138a397b6cdbc424178e4ccad2b9ba23191.nix;
        revNum = 0;
        sha256 = "4b026f0d71cf21e9130932f617f85138a397b6cdbc424178e4ccad2b9ba23191";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "2edaf3cc9b119194aca598a7c6cad565bc99138f0f6c3a53982665d7c33588ff";
    revisions = {
      r0 = {
        nix = import ../hackage/hatter-0.2.0-r0-4ee909e4710181c50eedf77cd2259b949ade403bfe242852dc4fe7b1c70c2723.nix;
        revNum = 0;
        sha256 = "4ee909e4710181c50eedf77cd2259b949ade403bfe242852dc4fe7b1c70c2723";
      };
      default = "r0";
    };
  };
}