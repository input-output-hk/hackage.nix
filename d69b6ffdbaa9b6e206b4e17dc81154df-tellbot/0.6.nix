{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tellbot";
        version = "0.6";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/tellbot";
      url = "";
      synopsis = "IRC tellbot";
      description = "An IRC bot that can be used to create queuing message.\nIt also offers a simple administration IRC bot interface.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tellbot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-conduit)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.regex-posix)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.tagsoup)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }