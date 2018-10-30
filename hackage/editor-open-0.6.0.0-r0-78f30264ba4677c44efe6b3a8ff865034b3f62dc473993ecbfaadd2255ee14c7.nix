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
      specVersion = "1.10";
      identifier = {
        name = "editor-open";
        version = "0.6.0.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2015 Peter Harpending";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/editor-open";
      url = "";
      synopsis = "Open the user's \$VISUAL or \$EDITOR for text input.";
      description = "You know when you run @git commit@, and an editor pops open so you can enter a\ncommit message? This is a Haskell library that does that.\n\nThis library isn't very portable. It relies on the @\$EDITOR@ environment\nvariable. The concept only exists on *nix systems.\n\nCHANGES\n\n[0.6.0.0] Support less common @\$VISUAL@. @vi@ is the fallback editor now\ninstead of @nano@.\n\n[0.5.0.0] Now use conduits on the backend. Support @base\\<4.8@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "editor-open-test_yaml_file" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.editor-open)
          ];
        };
        "editor-open-test_yaml_file_conduit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.editor-open)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }