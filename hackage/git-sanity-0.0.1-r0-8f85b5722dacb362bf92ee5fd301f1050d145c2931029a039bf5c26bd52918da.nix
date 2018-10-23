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
        name = "git-sanity";
        version = "0.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "github.com/aloiscochard/git-sanity";
      url = "";
      synopsis = "A sanity checker for your git history.";
      description = "This tool allow you sanity check the history of local git repository.\n\nA 'sane' history is one where there is no interleaved merged.";
      buildType = "Simple";
    };
    components = {
      "git-sanity" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.machines)
          (hsPkgs.machines-io)
          (hsPkgs.machines-process)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "git-sanity" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.git-sanity)
          ];
        };
      };
    };
  }