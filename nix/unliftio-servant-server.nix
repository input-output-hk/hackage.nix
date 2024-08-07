{
  "0.1.0.0" = {
    sha256 = "f78e882a60622f2a8296f937626c217e86574f638aef6d058184fa14ef9ffbd2";
    revisions = {
      r0 = {
        nix = import ../hackage/unliftio-servant-server-0.1.0.0-r0-a7437d80f9eab0cb18f525bf63b4aed52c009daf144adbbad3617b348b0c9f59.nix;
        revNum = 0;
        sha256 = "a7437d80f9eab0cb18f525bf63b4aed52c009daf144adbbad3617b348b0c9f59";
      };
      r1 = {
        nix = import ../hackage/unliftio-servant-server-0.1.0.0-r1-630a7443dbee43089ff6514ec9eb8c299651a4fbaf67384cbb20836a7ab2b035.nix;
        revNum = 1;
        sha256 = "630a7443dbee43089ff6514ec9eb8c299651a4fbaf67384cbb20836a7ab2b035";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "c1f0a869807112c53414cc9ba6fa00dcad055beba1a3197c518a86c614abad99";
    revisions = {
      r0 = {
        nix = import ../hackage/unliftio-servant-server-0.1.0.1-r0-697e6a726e29a7e41d70d6a6fb51b81677e751a7b3b915cce68d0394287df1ab.nix;
        revNum = 0;
        sha256 = "697e6a726e29a7e41d70d6a6fb51b81677e751a7b3b915cce68d0394287df1ab";
      };
      default = "r0";
    };
  };
}