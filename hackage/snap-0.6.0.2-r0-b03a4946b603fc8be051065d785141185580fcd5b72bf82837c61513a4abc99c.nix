{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { hint = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "snap";
        version = "0.6.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Ozgun Ataman, Doug Beardsley, Gregory Collins, Carl Howells, Chris Smith";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework: project starter executable and glue code library";
      description = "Snap Framework project starter executable and glue code library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.Crypto)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.clientsession)
          (hsPkgs.configurator)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.heist)
          (hsPkgs.logict)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.old-time)
          (hsPkgs.pwstore-fast)
          (hsPkgs.safe)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.stm)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.xmlhtml)
        ] ++ (if compiler.isGhc && compiler.version.ge "7.0" && (compiler.isGhc && compiler.version.lt "7.4")
          then [ (hsPkgs.aeson-native) ]
          else [
            (hsPkgs.aeson)
          ])) ++ pkgs.lib.optional (flags.hint) (hsPkgs.hint)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "snap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.directory-tree)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.snap-server)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
          ];
        };
      };
    };
  }