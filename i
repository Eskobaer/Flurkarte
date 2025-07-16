
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>Flurkarte Deutschland</title>
  <style>
    body {
      font-family: sans-serif;
      padding: 20px;
      max-width: 600px;
      margin: auto;
    }
    input, select, button {
      width: 100%;
      padding: 10px;
      margin-top: 10px;
      font-size: 16px;
    }
    h2 {
      text-align: center;
    }
  </style>
</head>
<body>
  <h2>Flurkarte anzeigen (Deutschland)</h2>
  <label for="adresse">Adresse eingeben:</label>
  <input type="text" id="adresse" placeholder="z. B. Musterstraße 12, 12345 Berlin">

  <label for="bundesland">Bundesland wählen:</label>
  <select id="bundesland">
    <option value="be">Berlin</option>
    <option value="bb">Brandenburg</option>
    <option value="bw">Baden-Württemberg</option>
    <option value="by">Bayern</option>
    <option value="hb">Bremen</option>
    <option value="he">Hessen</option>
    <option value="hh">Hamburg</option>
    <option value="mv">Mecklenburg-Vorpommern</option>
    <option value="ni">Niedersachsen</option>
    <option value="nw">Nordrhein-Westfalen</option>
    <option value="rp">Rheinland-Pfalz</option>
    <option value="sl">Saarland</option>
    <option value="sn">Sachsen</option>
    <option value="st">Sachsen-Anhalt</option>
    <option value="sh">Schleswig-Holstein</option>
    <option value="th">Thüringen</option>
  </select>

  <button onclick="openViewer()">Flurkarte anzeigen</button>

  <script>
    function openViewer() {
      const adresse = encodeURIComponent(document.getElementById("adresse").value);
      const bundesland = document.getElementById("bundesland").value;

      let url = "";

      switch (bundesland) {
        case "be":
          url = `https://fbinter.stadt-berlin.de/fb/index.jsp?loginkey=zoomStart&mapId=k_liegenschaft`;
          break;
        case "bb":
          url = `https://bb-viewer.geobasis-bb.de/`;
          break;
        case "bw":
          url = `https://www.geoportal-bw.de`;
          break;
        case "by":
          url = `https://geoportal.bayern.de/bayernatlas/?zoom=10&bgLayer=atkis&topic=kataster&layers=TK&lang=de&search=${adresse}`;
          break;
        case "hb":
          url = `https://www.geoportal.bremen.de/`;
          break;
        case "he":
          url = `https://gds.hessen.de/karte?search=${adresse}`;
          break;
        case "hh":
          url = `https://geoportal-hamburg.de/Geoportal/`;
          break;
        case "mv":
          url = `https://www.geoportald-mv.de/geoportal/karte?searchtext=${adresse}`;
          break;
        case "ni":
          url = `https://www.geobasisdaten.niedersachsen.de/katasterkarten-online/`;
          break;
        case "nw":
          url = `https://www.tim-online.nrw.de/tim-online2/`;
          break;
        case "rp":
          url = `https://www.geoportal.rlp.de/portal/karten.html?WMC=1491212317351`;
          break;
        case "sl":
          url = `https://geoportal.saarland.de/portal/de/karten.html`;
          break;
        case "sn":
          url = `https://geoportal.sachsen.de/cps/karte.html?search=${adresse}`;
          break;
        case "st":
          url = `https://www.lvermgeo.sachsen-anhalt.de/de/startseite.html`;
          break;
        case "sh":
          url = `https://www.geoportal.schleswig-holstein.de/portal/`;
          break;
        case "th":
          url = `https://www.geoportal-th.de/`;
          break;
        default:
          alert("Bundesland nicht unterstützt.");
          return;
      }

      window.open(url, "_blank");
    }
  </script>
</body>
</html>
