{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hxt-relaxng";
        version = "9.1.5.4";
      };
      license = "MIT";
      copyright = "Copyright (c) 2005-2015 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt, Martin Schmidt, Torben Kuseler";
      homepage = "https://github.com/UweSchmidt/hxt";
      url = "";
      synopsis = "The HXT RelaxNG validator";
      description = "The HXT RelaxNG validator";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.hxt)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.hxt-regex-xmlschema)
        ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
      };
    };
  }