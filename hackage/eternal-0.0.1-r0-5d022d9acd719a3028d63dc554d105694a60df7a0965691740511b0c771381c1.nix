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
        name = "eternal";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heather Cynede <Cynede@Gentoo.org>";
      author = "Heather Cynede";
      homepage = "";
      url = "";
      synopsis = "everything breaking the Fairbairn threshold";
      description = "Everything breaking the Fairbairn threshold\nbut in the same time usable in other projects";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fsharp)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.regex-compat)
          (hsPkgs.process)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ];
      };
    };
  }