@AbapCatalog.sqlViewName: 'Z_JAR_V_CDS_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Articulos Arte'
@Metadata.allowExtensions: true
define view Z_JAR_Cds_art
  as select from zjar_tb_art
{

  key client as client,
  key id     as Id,
      descr  as Descr,
      ldesc  as Ldesc,
      color  as Color,
      piezas as Piezas,
      stock  as Stock,
      url    as Url,

      // 0 neutral    grey
      // 1 negative   red
      // 2 critical   yellow
      // 3 positive   green

      case
      when stock = 1 then 3
      when stock = 2 then 2
      when stock = 3 then 1
      else 0
      end    as status

}
