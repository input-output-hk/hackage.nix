{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      small_base = true;
      bibutils = true;
      embed_data_files = false;
      unicode_collation = false;
      test_citeproc = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "scholdoc-citeproc"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tim T.Y. Lin <timtylin@gmail.com>";
      author = "Tim T.Y. Lin <timtylin@gmail.com>";
      homepage = "http://scholdoc.scholarlymarkdown.com";
      url = "";
      synopsis = "Scholdoc fork of pandoc-citeproc";
      description = "This package is a fork of @pandoc-citeproc@, intended to\nsupport the development of Scholdoc. It is currently just a\ntrivial fork just so it can compile against\n@scholdoc-citeproc@ without polluting the @pandoc-citeproc@\npackage and executable namespace.\n\nThis package is versioned identically to @pandoc-citeproc@.\n\nFor descriptions of the original @pandoc-citeproc@ package,\nplease visit\n<http://hackage.haskell.org/package/pandoc-citeproc>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.scholdoc-types)
          (hsPkgs.tagsoup)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.xml-conduit)
          (hsPkgs.data-default)
          (hsPkgs.split)
          (hsPkgs.yaml)
          (hsPkgs.scholdoc)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (flags.bibutils) (hsPkgs.hs-bibutils)) ++ (if flags.unicode_collation
          then [ (hsPkgs.text) (hsPkgs.text-icu) ]
          else [
            (hsPkgs.rfc5051)
            ])) ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.parsec)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            ]
          else [ (hsPkgs.base) ]);
        };
      exes = {
        "scholdoc-citeproc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.scholdoc-citeproc)
            (hsPkgs.scholdoc-types)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.syb)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        "test-citeproc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.scholdoc-types)
            (hsPkgs.scholdoc)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.scholdoc-citeproc)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "test-scholdoc-citeproc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.scholdoc-types)
            (hsPkgs.scholdoc)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.scholdoc-citeproc)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }