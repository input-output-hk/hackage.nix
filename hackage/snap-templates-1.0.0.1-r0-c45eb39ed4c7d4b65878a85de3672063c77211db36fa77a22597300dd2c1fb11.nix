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
        name = "snap-templates";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Ozgun Ataman, Doug Beardsley, Gregory Collins, Carl Howells, Chris Smith";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Scaffolding CLI for the Snap Framework";
      description = "This is the Scaffolding CLI for the official Snap Framework libraries.\nIt includes:\n\n* The \\\"snap\\\" executable program for generating starter projects\n\nTo get started, issue the following sequence of commands:\n\n@\$ cabal install snap-templates\n\$ mkdir myproject\n\$ cd myproject\n\$ snap init@\n\nIf you have trouble or any questions, see our FAQ page\n(<http://snapframework.com/faq>) or the documentation\n(<http://snapframework.com/docs>).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.directory-tree)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.old-time)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
          ];
        };
      };
    };
  }