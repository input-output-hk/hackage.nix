{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "neil";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2010-2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/";
      url = "";
      synopsis = "General tools for Neil";
      description = "General tools for Neil. Typically, I don't bother releasing these tools, and just leave\nthem in the Git repo.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "neil" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.extra)
            (hsPkgs.containers)
            (hsPkgs.cmdargs)
          ] ++ pkgs.lib.optionals (!flags.small) [
            (hsPkgs.json)
            (hsPkgs.GoogleChart)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }