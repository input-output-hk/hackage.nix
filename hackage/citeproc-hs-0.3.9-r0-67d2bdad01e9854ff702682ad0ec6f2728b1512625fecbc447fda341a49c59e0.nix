{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      small_base = true;
      bibutils = true;
      network = true;
      hexpat = true;
      embed_data_files = false;
      unicode_collation = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "citeproc-hs";
        version = "0.3.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "http://gorgias.mine.nu/repos/citeproc-hs/";
      url = "";
      synopsis = "A Citation Style Language implementation in Haskell";
      description = "citeproc-hs is a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here:\n<http://citationstyles.org/>.\n\nFor the API documentation please see \"Text.CSL\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ((((([
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.json)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.pandoc-types)
        ] ++ pkgs.lib.optional (flags.bibutils) (hsPkgs.hs-bibutils)) ++ pkgs.lib.optionals (flags.network) [
          (hsPkgs.network)
          (hsPkgs.HTTP)
        ]) ++ (if flags.hexpat
          then [ (hsPkgs.hexpat) ]
          else [
            (hsPkgs.xml)
          ])) ++ pkgs.lib.optionals (flags.embed_data_files) [
          (hsPkgs.template-haskell)
          (hsPkgs.file-embed)
        ]) ++ pkgs.lib.optionals (flags.unicode_collation) [
          (hsPkgs.text)
          (hsPkgs.text-icu)
        ]) ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.parsec)
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }