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
      specVersion = "1.8";
      identifier = {
        name = "hsubconvert";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/hsubconvert";
      url = "";
      synopsis = "One-time, faithful conversion of Subversion repositories to Git";
      description = "One-time, faithful conversion of Subversion repositories to Git.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsubconvert" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.svndump)
            (hsPkgs.gitlib)
            (hsPkgs.general-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parallel-io)
            (hsPkgs.regex-posix)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.stringable)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }