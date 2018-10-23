{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "acid-state-tls";
        version = "0.9.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2013, David Himmelstrup, Jeremy Shaw";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Jeremy Shaw";
      homepage = "http://acid-state.seize.it/";
      url = "";
      synopsis = "Add TLS support for Data.Acid.Remote";
      description = "Adds TLS support for connections to remote AcidState databases";
      buildType = "Simple";
    };
    components = {
      "acid-state-tls" = {
        depends  = [
          (hsPkgs.acid-state)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.network)
          (hsPkgs.safecopy)
        ];
      };
    };
  }