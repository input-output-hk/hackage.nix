{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth-bcrypt";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Oliver Hunt <oliver.huntuk@gmail.com>";
      author = "Oliver Hunt";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "BCrypt salted and hashed passwords in a database as auth for yesod";
      description = "BCrypt salted and hashed passwords in a database as auth for yesod";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.text)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-auth)
          (hsPkgs.bcrypt)
        ];
      };
    };
  }