{
  "0.1.0" = {
    sha256 = "19d49ba4e15e5915aca097d4599766944a0886e92c80ca1df5c3665792a05e96";
    revisions = {
      r0 = {
        nix = import ../hackage/pup-0.1.0-r0-032809b76cc1ce697912adce7e314d1ccf2e8fae1a6ad3945fa194f591cddbc9.nix;
        revNum = 0;
        sha256 = "032809b76cc1ce697912adce7e314d1ccf2e8fae1a6ad3945fa194f591cddbc9";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "3985fbb87fcd4625a150d70d152aa022ac50233d7e67a3787bfdd168f01456a3";
    revisions = {
      r0 = {
        nix = import ../hackage/pup-0.1.1-r0-582059e945b157df78aab598595dda52c83254dc0aa9330cb772952cdf26d976.nix;
        revNum = 0;
        sha256 = "582059e945b157df78aab598595dda52c83254dc0aa9330cb772952cdf26d976";
      };
      default = "r0";
    };
  };
}