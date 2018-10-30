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
      specVersion = "1.6";
      identifier = {
        name = "Nomyx-Core";
        version = "0.7.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Nomyx-Language)
          (hsPkgs.DebugTraceHelpers)
          (hsPkgs.MissingH)
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.data-lens-fd)
          (hsPkgs.directory)
          (hsPkgs.either-unwrap)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.happstack-authenticate)
          (hsPkgs.hint)
          (hsPkgs.hint-server)
          (hsPkgs.hscolour)
          (hsPkgs.ixset)
          (hsPkgs.mime-mail)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.safecopy)
          (hsPkgs.stm)
          (hsPkgs.tar)
          (hsPkgs.temporary)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }