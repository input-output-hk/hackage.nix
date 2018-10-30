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
      specVersion = "1.2";
      identifier = {
        name = "simplesmtpclient";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Massimo Zaniboni <massimo.zaniboni.74@virgilio.it>";
      homepage = "";
      url = "";
      synopsis = "Very simple SMTP Client";
      description = "Original post to lang.haskell.libraries: \"If you find this limited module useful then you can insert in your project. It is very limited but it could be useful to send email message using insecure plain/login authentication. I have no time to extend it.\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.array)
        ];
      };
    };
  }