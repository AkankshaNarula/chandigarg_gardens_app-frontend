import 'package:flutter/material.dart';

const List<List<String>> arr = [
  [
    'CH16001',
    'Scientific Name',
    'Common Name',
    'Identifying characters',
    'Economic Importance',
    'Flowering Time'
  ],
  [
    'CH16002',
    'Acacia auriculiformis',
    'Australian wattle',
    'An evergreen tree having Pendulous branches, This tree is medium-sized & bears yellow flowers.',
    'Wood of this tree is used as fuel',
    'September-November'
  ],
  [
    'CH16003',
    'Aegle marmelos',
    'Indian bael, Bael',
    'Deciduous tree, alternate leaves, borne singly.',
    'In addition to the essential medicinal values, bael is reported as an important item in industrial food processing and an excellent source for extracting pharmaceuticals and many other economically important herbal compounds.',
    'April-May'
  ],
  [
    'CH16004',
    'Agathis robusta',
    'Kauri pine, Queensland kauri (pine) or smooth-barked kauri',
    'Thick, smooth bark with scattered flakes, orange-brown, brown or grey in color',
    'Used for making plywood, cabinet works, furniture, indoor fittings and building boats.',
    'December-February'
  ],
  [
    'CH16005',
    'Aesculus assamica',
    'Buckeye and horse chestnut',
    'Medium-sized trees, with spreading, glabrous, terete branches; bark greyish, warty. Leaves glabrous',
    'Wood is used for making vases, plates, cups, and toys',
    'February-May'
  ],
  [
    'CH16006',
    'Albizia procera',
    'White Siris, Karanji',
    'Deciduous tree, Oval crown, bark light brownish lines, Leaves bipinnate.',
    'Wood is used for sugarcane-crushers, agricultural implements, bark is used for tanning & dyeing.',
    'August-September'
  ],
  [
    'CH16007',
    'Alstonia scholaris',
    'Devil’s tree, Shaitan Wood',
    'Tall, spreading & shady tree. Bears small greenish white flowers.',
    'Wood is used for coffins, blackboard. Bark is used for medicinal',
    'December-March'
  ],
  [
    'CH16008',
    'Araucaria bidwillii',
    'Bunya pine',
    'The crown is dense and broadly rounded. Juvenile leaves are dark green, glossy, and sharply pointed at the tip.',
    'Timber trees (many taxa having rot- and termite-resistant wood), resin and flavoring plants, and numerous cultivated.',
    'December-March'
  ],
  [
    'CH16009',
    'Araucaria cunninghamii',
    'Hoop Pine',
    'The branches are arranged in symmetric whorls, and the trunks are characteristically straight. The leaves of young plants are needlelike and curve upward to a point, while those of mature trees are scalelike and densely overlapping. The round female cones are spiny and reach',
    'Wood used for light construction and interior work, including mouldings, linings, paneling, domestic flooring, shelves, cupboards, general joinery, furniture, and cabinet work.',
    'November-February'
  ],
  [
    'CH16010',
    'Barringtonia acutangula',
    'Indian Oak, Samundar-Phal',
    'Small evergreen tree, bark dark brown, leaves shortly stalked.',
    'Wood is used for boat-building, furniture, carts, etc. Bark is used for tan. Root is used in place of Quinine.',
    'May-July'
  ],
  [
    'CH16011',
    'Bauhinia purpurea',
    'Mountain bony, Gulabi Kachnar',
    'Deciduous tree, thick bark, flowers rose-colored.',
    'Flower buds used as food in Sikkim. Bark is used for tanning.',
    'November-December'
  ],
  [
    'CH16012',
    'Bauhinia variegata',
    'Orchid tree, Kachnar',
    'Large deciduous tree flowers pink to purple or white.',
    'Wood is used for Agricultural implements. Bark is used in tanning and has medicinal value.',
    'March-April'
  ],
  [
    'CH16013',
    'Bombax ceiba',
    'Simbal',
    'Large deciduous tree, large red/orange flower.',
    'The white fluffy fibers are carded into thread and woven into textiles in Nepal & India',
    'January-March'
  ],
  [
    'CH16014',
    'Callistemon lanceolatus',
    'Bottle brush',
    'Dwarf tree with pendulous branches, Height - 15',
    'Used in roadside for planting and grouping',
    'November-December'
  ],
  [
    'CH16015',
    'Cassia fistula',
    'Amaltas',
    'Medium-sized shady tree, bears large bright yellow flower',
    'Ornamental, Multipurpose timber',
    'May-June'
  ],
  [
    'CH16016',
    'Cassia spectabilis',
    'American Cassia, Popcorn Tree, Weeping Cassia, Drooping Cassia, Popcorn Bush, Golden Wonder Tree, Spectacular Cassia, Yellow Cassia',
    'Leaf arrangement: alternate, Fruit shape: elongated, Trunk/bark/branches: bark is thin',
    'Spectabilis possesses significant biological activity, such as antibacterial, antibiofilm, antifungal, and antioxidant properties.',
    'October-December'
  ],
  [
    'CH16017',
    'Casuarina equisetifolia',
    'Jor Tor, She-Oak',
    'Tall columnar tree, needle leaves Coaster.',
    'sand dune stabilization, shelter-belts, land reclamation, and erosion control.',
    'September-October'
  ],
  [
    'CH16018',
    'Cinnamomum camphora',
    'Camphor tree, Camphor Tree',
    'Large evergreen tree with a stout, uniformly cylindrical bole and dense, symmetrical crown. Leaves: alternate; blades entire but may have wavy margins, mostly ovate, long, glossy green above, duller green below.',
    'Used for a cheaper grade of furniture, chests, tea-boxes, and rafters, scantlings, and planking for lighter forms of construction.',
    'April-May'
  ],
  [
    'CH16019',
    'Citharexylum spinosum',
    'Fiddlewoods or zitherwoods',
    'Small and dioecious evergreen tree, deciduous in countries with a cooler climate. Orange-yellow petioles.',
    'It is used for furniture, musical instruments, general construction, windows, doors, beams, etc.',
    'All Year'
  ],
  [
    'CH16020',
    'Cupressus sempervirens',
    'Italian cypress',
    'Leaf: Evergreen, scale-like, blunt-tipped, tight and crowded on the twig in opposite pairs, dark green. Flower: Species is monoecious',
    'It is an excellent timber for making railway sleepers. It is considered durable. It is one of the most durable coniferous woods requiring no antiseptic treatment. Preferable to deodar wood for making window frames, ceilings, panels of doors, and flooring.',
    'January-February'
  ],
  [
    'CH16021',
    'Delonix regia',
    'Gul Mohur',
    'The flowers of Delonix regia are large, with four spreading scarlet or orange-red petals and a fifth upright petal called the standard, which is slightly larger and spotted with yellow and white. They appear in corymbs along and at the ends of branches.',
    'The wood is employed locally for agricultural implements; handles for carpentry tools, combs, etc.',
    'April-July'
  ],
  [
    'CH16022',
    'Erythrina crista-galli',
    'Coral tree or cockspur coral tree',
    'Deciduous tree, spiny branches corky-barked tree, showy flowers',
    'Anti-inflammatory medication, narcotic, disinfectant, and for the treatment of wounds',
    'April-October'
  ],
  [
    'CH16023',
    'Eucalyptus (Hybrid)',
    'Eucalyptus, Safeda',
    'Tall evergreen tree, grey bark, fruit conical with a flat top.',
    'Wood used as shipbuilding, construction timbers.',
    'April-May'
  ],
  [
    'CH16024',
    'Eugenia jambolana',
    'Indian Blackberry, Jamun',
    'Large evergreen tree, light grey bark, elliptic.',
    'Wood is used in building, agricultural implements, and fuelwood. Bark is used for tanning and dyeing.',
    'April-June'
  ],
  [
    'CH16025',
    'Grevillea robusta',
    'Silver Oak',
    'Large evergreen tree, leaves pinnate, flower orange-colored.',
    'Timber is used for cabinet work. Planted along road sides and parks.',
    'April-May'
  ],
  [
    'CH16026',
    'Heterophragma roxburghii',
    'Waras, Monkey tail tree',
    'Large tree, grey bark, leaves tomentose, flower pale yellow.',
    'Cultivated as ornamental along road sides and parks.',
    'March-June'
  ],
  [
    'CH16027',
    'Homalium tomentosum',
    'Burma Lancewood',
    'Deciduous, Trunk is well-shaped, up to 40 cm in diameter, buttressed. Leaves are broadly obovate to obovate-oblong, 7.5-15 cm long, 4-7 cm broad, shallowly glandular-toothed, dull, smooth above, velvety below.',
    'The wood is used as malas and for the manufacture of matches. It is suitable for making a wide range of articles, including fishing rods.',
    'May-June'
  ],
  [
    'CH16028',
    'Koelreuteria apiculata',
    'Golden rain tree',
    'Deciduous tree, leaves alternate, bipinnate, flower yellow',
    'Seeds used as beads. Flowers medicinal and a source of yellow dye.',
    'October-November'
  ],
  [
    'CH16029',
    'Lagerstroemia flos-reginae',
    'Pride of India, Rose of India',
    'Large deciduous tree, bark smooth, flowers pink to purple',
    'Wood used for agricultural implement, furniture, oars, cooperage. Suitable for tool-handle, golf-stick shafts.',
    'May-October'
  ],
  [
    'CH16030',
    'Lagerstroemia thorelli',
    'Pride of India, Queen’s flower',
    'Dwarf tree with pink flower.',
    'The wood is used in India for boats, canoes, etc. Also has medicinal properties.',
    'July – September'
  ],
  [
    'CH16031',
    'Leucaena leucocephala',
    'Wild Tamarind',
    'Shrub or small tree usually growing 2-10 m tall, The younger stems are green and usually densely covered in fine greyish-colored hairs.',
    'Fencing, soil fertility, firewood, fiber, and livestock fodder.',
    'July-October'
  ],
  [
    'CH16032',
    'Magnolia grandiflora',
    'Southern magnolia, Bull bay',
    'Broadleaf evergreen tree that is noted for its attractive dark green leaves and its large, extremely fragrant flowers.',
    'Used for malaria and rheumatism, most part contains an essential oil.',
    'March-May'
  ],
  [
    'CH16033',
    'Mangifera indica',
    'Mango',
    'Large evergreen tree, dark grey bark.',
    'Used in chutney, pickles, and March-April',
    'May-July'
  ],
  [
    'CH16034',
    'Michelia champaca',
    'Orange Champak',
    'Evergreen or semi-deciduous, bark surface smooth, grey to greyish-white, inner bark fibrous, yellow to brown, crown conical to cylindrical.',
    'Wood used for posts, boards, veneers, furniture, decorative fittings, carriage and ship – building, and carving.',
    'June- September.'
  ],
  [
    'CH16035',
    'Mimusops elengi',
    'Mulsari, Bullet wood tree',
    'Large evergreen tree, dark grey bark.',
    'Wood is used for frames, furniture, etc. Fruits have medicinal properties. Bark is used for tanning & dyeing.',
    'March-May'
  ],
  [
    'CH16036',
    'Pinus longifolia',
    'Chir Pine',
    'Bark dark red-brown, thick, deeply and longitudinally fissured, scaly; winter buds.',
    'The timber is used for construction, furniture, etc., and the trunk as a source of resin.',
    'March-May'
  ],
  [
    'CH16037',
    'Pongamia pinnata',
    'Indian beach, Papri',
    'Evergreen tree, barks soft, grayish green.',
    'Wood is used for timber and fuelwood. Ash of wood is used for dyeing.',
    'May-July'
  ],
  [
    'CH16038',
    'Salix babylonica',
    'Weeping willow',
    'Large deciduous tree with grayish-brown or grayish-black bark with furrows.',
    'Weeping, pendulous branches, stems are reddish-brown to yellowish-brown. used to manufacture boxes and similar goods. plantations for use as a biomass fuel.',
    'April-May'
  ],
  [
    'CH16039',
    'Brassia actinophylla',
    'Umbrella Tree, Palm',
    'Shrub/small tree with palmately compound leaves. Stalked leaflets are broad.',
    'Continuously purify the air by filtering and removing toxins released by cigarette smoke.',
    'January-May'
  ],
  [
    'CH16040',
    'Saraca indica',
    'Asoka tree',
    'Evergreen tree with beautiful fragrant flowers. ',
    'Bark dark green. Medicinal properties.',
    'February-April'
  ],
  [
    'CH16041',
    'Swietenia mahagoni',
    'Mahogany',
    'Evergreen tree, bark bitter, leaves paripinnate.',
    'Used for fine cabinet, timber is used for shipbuilding.',
    'April-May'
  ],
  [
    'CH16042',
    'Tecoma argentea',
    'Tree of Gold, Silver Trumpet Tree',
    'Evergreen tree, leaves opposite, yellow flowers.',
    'Ornamental tree in garden and along roadsides.',
    'January- April'
  ],
  [
    'CH16043',
    'Terminalia bellirica',
    'Behera',
    'Large deciduous tree, bark bluish flower.',
    'Used in Ayurveda to treat things like hepatitis, bronchitis, asthma, piles, diarrhea, coughs, and eye diseases.',
    'May-June'
  ],
  [
    'CH16044',
    'Terminalia chebula',
    'Harad, Chebulic Myrobalan',
    'Large deciduous tree, terminal spikes, drupes yellow to orange-brown in color.',
    'Tanning leather and dyeing cloth.',
    'May-June'
  ],
];

class TreeInfoPage extends StatelessWidget {
  final String uid;

  TreeInfoPage({required this.uid});

  @override
  Widget build(BuildContext context) {
    int index = arr.indexWhere((treeInfo) => treeInfo[0] == uid);

    if (index != -1) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Tree Information'),
        ),
        body: TreeInfoStack(uid: uid, treeInfo: arr[index]),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Tree Information'),
        ),
        body: Center(
          child: Text('Sorry! No tree data found'),
        ),
      );
    }
  }
}

class TreeInfoStack extends StatefulWidget {
  final String uid;
  final List<String> treeInfo;

  TreeInfoStack({required this.uid, required this.treeInfo});

  @override
  _TreeInfoStackState createState() => _TreeInfoStackState();
}

class _TreeInfoStackState extends State<TreeInfoStack> {
  List<String> infoKeys = [
    'Scientific Name',
    'Common Name',
    'Identifying Character',
    'Economic Importance',
    'Flowering Time',
  ];

  int currentCardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: infoKeys.length,
            onPageChanged: (index) {
              setState(() {
                currentCardIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return AnimatedContainer(
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(16.0),
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.limeAccent.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '${infoKeys[index]}: ${widget.treeInfo[index + 1]}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  

                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Swipe to see more info',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(infoKeys.length, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 10,
              width: 10,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == currentCardIndex ? Colors.green : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
