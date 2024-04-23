{
  "0.1.0.1" = {
    sha256 = "3b6bb011e0cc647fcc1254c52b182a5928a730a26cb55cfbcc19d9f2e27a78d5";
    revisions = {
      r0 = {
        nix = import ../hackage/ctpl-0.1.0.1-r0-0dc55a1a4685d6914da7245af241a75af839ca95cd62194f359041aa8d06abba.nix;
        revNum = 0;
        sha256 = "0dc55a1a4685d6914da7245af241a75af839ca95cd62194f359041aa8d06abba";
      };
      default = "r0";
    };
  };
  "0.1.0.4" = {
    sha256 = "29eef56cbc972a03b9da43bd00a61bd8f9eab81d23dbcbf0e5e171b270f16c0f";
    revisions = {
      r0 = {
        nix = import ../hackage/ctpl-0.1.0.4-r0-cc83313b20b0cd9649218a57ed80dde294f293935efe664b967a7cae8df5d588.nix;
        revNum = 0;
        sha256 = "cc83313b20b0cd9649218a57ed80dde294f293935efe664b967a7cae8df5d588";
      };
      r1 = {
        nix = import ../hackage/ctpl-0.1.0.4-r1-761ad053d778aec69e386682707afc03ae9330e675bb92b8ba4bbe8f6bd4910b.nix;
        revNum = 1;
        sha256 = "761ad053d778aec69e386682707afc03ae9330e675bb92b8ba4bbe8f6bd4910b";
      };
      default = "r1";
    };
  };
}