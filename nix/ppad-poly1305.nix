{
  "0.1.0" = {
    sha256 = "86d5d72dada776289cd52f04eff13826bce7f6a4f3ce02c6efad0b873acf1db2";
    revisions = {
      r0 = {
        nix = import ../hackage/ppad-poly1305-0.1.0-r0-0aad84b3fd218459301f1bc6fc7d13979626851011d47ab8db525bc0ff413e77.nix;
        revNum = 0;
        sha256 = "0aad84b3fd218459301f1bc6fc7d13979626851011d47ab8db525bc0ff413e77";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "667e9ac08143fad79aa4ba92413520101b04edc78e44d9001cfdeb4f93a563ef";
    revisions = {
      r0 = {
        nix = import ../hackage/ppad-poly1305-0.2.0-r0-42a93ebc18a243eab25fea6eb7bbb894616b536cef4d7752c60cb921fae3975a.nix;
        revNum = 0;
        sha256 = "42a93ebc18a243eab25fea6eb7bbb894616b536cef4d7752c60cb921fae3975a";
      };
      default = "r0";
    };
  };
}