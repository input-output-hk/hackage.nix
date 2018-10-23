{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rosa";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2015";
      maintainer = "micheleguerinirocco@me.com";
      author = "Rnhmjoj";
      homepage = "";
      url = "";
      synopsis = "Query the namecoin blockchain";
      description = "Rosa is a commmand line tool to query the namecoin blockhain.\nIt gets the JSON value of a name and other infos using namecoind\nlocal server or the dnschain REST api and display them in a pretty\nformat.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rosa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.wreq)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.argparser)
            (hsPkgs.process)
          ];
        };
      };
    };
  }