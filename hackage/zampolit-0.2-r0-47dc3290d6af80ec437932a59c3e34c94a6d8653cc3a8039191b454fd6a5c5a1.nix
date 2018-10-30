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
        name = "zampolit";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Brian Sniffen";
      maintainer = "bts@alum.mit.edu";
      author = "Brian Sniffen";
      homepage = "https://github.com/briansniffen/zampolit";
      url = "";
      synopsis = "A tool for checking how much work is done on group projects.";
      description = "Zampolit is a tool for checking how much work each contributor to a project is doing.  It produces pretty graphs of word count per author.  This is helpful when collaborating on projects that are mostly text, and do not necessarily break lines reliably or often.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zampolit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.cmdargs)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HSH)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }