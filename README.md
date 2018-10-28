# Raspbery PI 5 Node Cluster Case

Gregor von Laszewski<sup>1</sup>, Eliyah Zayin<sup>3</sup>, Diego Ansaldo<sup>2</sup>

* <sup>1</sup>Indiana University, laszewski@gmail.com 
* <sup>2</sup>The Academy of Science and Entrepreneurship, diegansaldo@gmail.com
* <sup>3</sup>The Academy of Science and Entrepreneurship, eliyahzayin@gmail.com

TODO: move designs form 

https://drive.google.com/drive/folders/1D8YjtOAh8FemuruPYPWuV4zYNxszW_wN

## Abstract

We present the design of a Raspberry Pi cluster case that allows to
create a cluster created form up to five Raspberry Pis.  The cluster
is designed for educational purposes as part of a Cloud
Engineering class taught at Indiana University. The clusters are
designed to be portable and allow the integration into a *shelf* where
multiple such clusters can build a bigger cluster. Hence the cluster
can be taken home to support work there, but when coming to class the
cluster can be plugged into the shelf to allow sharing of the Pi's
among all class members.  The case is designed without need of screws
and can easily be reproduced on a laser cutter without purchasing of
additional components. All design files are openly distributed so it
can easily be reproduced.

## Introduction

Raspberry PI's are inexpensive and in contrast to a comput server that
coast about $15K on can get a fully operational PI for $35.  Despite
its low cost a number of PIs are an ideal platform for developing
clusters. Naturally it does not have the same compute power as a n *
$15K server, but to showcase some of the software services and tools
needed to build more expensive clusters the PI platform is very
useful. However a PI does not come with a case. One could purchase
multiple cases, but such cases assume external power and networking
which are not included. Our goal is to create a single case that can
hold up to 5 Raspberry Pi's. Furthermore, We like to be able to
connect multiple such clusters to a larger cluster that is housed in a
shelf.

We present here our current solution for such a case and also give
opportunities for further improvements to this effort Which can be
conducted as part of educational activities. Alternatives such as
virtualizing a cluster entirely in a cloud or on a users local
computer are discussed in ???.

## Requirements

Next we list a number of requirements for this efforst. We distinguish
educational requirements and technical requirements.

### Educational Requirements

We list a number of educational requirements that we addressed through
this effort

*Focus on Programming:* Typically students will use a graphical user
interface based tool to design such a case. However, from the
beginning on we wanted to avoid such a GUI based method and expose
students to programming. This is especially desirable in case students
need to not only be introduced in GUI design processes, but also
programming as this will lead to a more parameterized design as well
as exposing students to concepts of programming.

*Focus on Simplicity of the Design:* Certainly it is possible to
create a fairly complex design or a design inspired by art and
architecture. However, in our case we wanted to focus on a simple
design that could be integrated in a shelf. In future we hope that the
cases can be modified and for example get artful additions to for
example support efforts such as ??? (sentinel)

*Itterative Design:* The activity was scheduled around the principle
of an itterative design process in which first principles such as
easy connectors were prototyped, before the whole case was designed.

*Alternative but Integrative Design:* The activity allowed for
alternative designs to be explored and each student member had the
opportunity to follwo their own idea. Exchange of ideas in an open
enviroenment was however encouraged and improvement suggestions need
to influence the design process. This is part of a stromg team work
approach of the activities.

*Documenation:* The activity has a minimal documentation requirement
in which the design is documented so it can be reproduced and
sufficient assembly instructions are provided. As the Laser cutting
equipment use if very new, we want to make sure that enough
documentation is identified and added so that it can be used for other
students to reuse. 

*Advanced Documentation Requirements:* The activity allows also for
participation in advanced documentation requirements such as this
document that is also incfluenced by ??? and ???. As part of this
requirement students have the ability to participate in writing a
paper instead of an experience report. A paper focusses on how to
write an academic paper, while an experience report focusses more on
what a student has done. We identified that the later ofetn leads to
information that although valuable for the student to recognize, does
not communicate the effort in a short an effective manner to the
reader while focussing on the deliverables.

### Technical Requirements

The following technical requirements exist

* Develop a case than can hold up to five PI's of Raspberry PI 3B or PI
  3B+, a network switch that can in addition be plugged into a laptop,
  and a power supply to power the Pis.

* No screws or glue needs to be used to assemble the case

* Laser cut material is to be used for the case

* The design document is openly redistributable

* The design has been fully tested and an assembly has been conducted

* Assembly instructions are provided

* A materials ordering list is provided to print either 1 or 10 cases.

* The cases be integratabtle intoa shelf that can host many of the
  clusters with 10 being the minimal.

* Prepare integration of a cluster with 200+ Raspberry PI's

* Compare the design to that of other cluster cases for PI's

* Have the cases be stable enough so they can be carried in a bag
  between home and class without breaking them.

## Design

Based on these requirements we designing a Raspberry PI Case for five
PI's out of laser cut sheets with the goals of keeping the design as
simple as possible, using few parts as to minimize production costs,
allowing for easy assembly without screws or glue, while making it
structurally sound. Furthermore, we allow reproducibility through an
open source design.


## Future Design Activities

To accomodate larger clusters in the class setting a shelf is proposed
in which we *place* the miniclusters while attaching it through a
power distribution bar and a large network switch to integrate the
individual clusters into the larger cluster. Furthermore we want to
create a product in a box called *Cloudmesh Pi Cluster* that we can
give to students so they can assemble such a cluster themself, or
order the parts directly from us and we ship the parts and the cluster
case to them.

## Introduction


TBD



The students had two
major innovations present in their first prototypes, in one of them,
the peg and slot system still used today, and the other, the smaller
interlocking pieces used to distribute strain in the case. The first
models had none of the refinements of the newer prototypes, but were a
very important and large step in the process. These prototypes started
what has been the most used and most important process in the design
of the case: design, build, test, analyze, repeat. This process
allowed the students to rapidly design and test, moving the case
closer and closer to completion, removing problems and adressing the
requirements along the way.

## Requirements

There were a few requirements presented to us at the beginning of the
design process: The cluster had to hold at least 5 Raspberry Pi 3
computers as well as a network hub and a power brick, it could not use
any glue to stay together, it had to fully incase all parts while
having holes for any ports and ventilation, it had to keep all
components secure and safe, and the code had to use only variables to
define the parts so any change could be easy to adjust to. While there
were other components that would be nice to have, these were the main
pieces that had to be incorperated.

## Design

Laser cut parts utilize 3mm cut-to-size acrylic supplied to IU from
https://www.tapplastics.com/product/plastics/cut_to_size_plastic.
Acrylic may come cast or extruded. Choosing cast acrylic will give a
higher quality in color and engraving but it is also more expensive.
Here is a list of acrylic options based on the size of the case
aranged as it would be for cutting; this is about 21 3/16in x 15in.

* Extruded Acrylic (Clear): $11.16
* Cast Acrylic (Clear): $16.41
* Cast Acrylic (Transparent Colors): $18.81

The list of parts not including the custom made laser cut parts is
provided in Table 1.

Table 1: Parts list as copied from <https://github.com/cloudmesh-community/book/blob/master/chapters/pi/case.md>

| Price | Description | URL |
| :- | :------- | :- |
| $29.99 | Anker 60W 6-Port USB Wall Charger, PowerPort 6 for iPhone 7 / 6s / Plus, iPad Pro / Air 2 / mini, Galaxy S7 / S6 / Edge / Plus, Note 5 / 4, LG, Nexus, HTC and More | [link](https://www.amazon.com/Anker-6-Port-Charger-PowerPort-iPhone/dp/B00P933OJC/ref=pd\_sim\_107\_70?\_encoding=UTF8\&psc=1\&refRID=B1S6V5G0CTJ9NH5G0CRT) |
| $8.90 | Cat 6 Ethernet Cable 1 ft White (6 Pack) - Flat Internet Network Cable - Jadaol Cat 6 Computer Cable short - Cat6 Ethernet Patch Lan Cable With | [link](https://www.amazon.com/Cat-Ethernet-Cable-White-Pack/dp/B01IQWGI0O/ref=sr\_1\_1?s=electronics\&ie=UTF8\&qid=1513699717\&sr=1-1\&keywords=Cat+6+Ethernet+Cable+1+ft+White+\%28+6+Pack+\%29+\%E2\%80\%93+Flat+Internet+Network+Cable+\%E2\%80\%93+Jadaol+Cat+6+Computer+Cable+short+-+Cat6+Ethernet+Patch+Lan+Cable+With\%E2\%80\%A6) |
| $29.99 | Netgear SOHO Switch, 8 port | [link](https://www.amazon.com/D-Link-Gigabit-Unmanaged-Desktop-DGS-108/dp/B000BCC0LO/ref=sr_1_fkmr1_1?ie=UTF8&qid=1539113345&sr=8-1-fkmr1&keywords=netgear+8+port+soho) |
| ($19.99) | Alternative to Netgear switch but not tested for the case: D-link 8-Port Unmanaged Gigabit Switch (GO-SW-8G) | [link](https://www.amazon.com/D-link-8-Port-Unmanaged-Gigabit-GO-SW-8G/dp/B008PC1MSO) |
| $10.49 | SanDisk Ultra 32GB microSDHC UHS-I Card with Adapter, Grey/Red, Standard Packaging (SDSQUNC-032G-GN6MA) | [link](https://www.amazon.com/SanDisk-microSDHC-Standard-Packaging-SDSQUNC-032G-GN6MA/dp/B010Q57T02/ref=sr\_1\_10?s=pc\&rps=1\&ie=UTF8\&qid=1498443283\&sr=1-10\&refinements=p\_85:2470955011,p\_n\_feature\_two\_browse-bin:6518304011,p\_n\_feature\_keywords\_two\_browse-bin:5947557011) |
| $8.59 | Short USB Cable, OKRAY 10 Pack Colorful Micro USB 2.0 Charging Data Sync Cable Cord for Samsung, Android Phone and Tablet, Nexus, HTC, Nokia, LG, Sony, Many Digital Cameras-0.66ft (7.87 Inch) | [link](https://www.amazon.com/OKRAY-Colorful-Charging-Samsung-Cameras-0-66ft/dp/B00R5GZJR6/ref=sr\_1\_6?s=pc\&ie=UTF8\&qid=1498447476\&sr=1-6\&keywords=micro+usb+cable+1ft) |
| $7.69 | 50 Pcs M2 x 20mm + 5mm Hex Hexagonal Threaded Spacer Support | [link](https://www.amazon.com/20mm-Hexagonal-Threaded-Spacer-Support/dp/B00FH8AB8Q/ref=sr\_1\_9?s=industrial\&ie=UTF8\&qid=1513700337\&sr=1-9\&keywords=hex+spacers+m2+20mm) |
| $7.99 | Easycargo 15 pcs Raspberry Pi Heatsink Aluminum + Copper + 3M 8810 thermal conductive adhesive tape for cooling cooler Raspberry Pi 3, Pi 2, Pi Model B+ | [link](https://www.amazon.com/Easycargo-Raspberry-Heatsink-Aluminum-conductive/dp/B07217N5LS/ref=sr\_1\_3?s=industrial\&ie=UTF8\&qid=1513700498\&sr=1-3\&keywords=raspberry+pi+3) |
| $34.95 | 5 * Raspberry Pi 3 Model B+ Motherboard | [link](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/) |
| $6.99 | HDMI Cable, Rankie 2-Pack 6FT Latest Standard HDMI 2.0 HDTV Cable - Supports Ethernet, 3D, 4K and Audio Return (Black) - R1108 | [link](https://www.amazon.com/Cable-Rankie-2-Pack-Latest-Standard/dp/B00Z07XQ4A/ref=sr\_1\_6?s=wireless\&ie=UTF8\&qid=1513782649\&sr=1-6\&keywords=hdmi+cable+6ft) |

(1) items were replaced with similar
:o: note the network switch is a different one, find the one we have so it can be recreated with our part for whcih we designed the case

## Alternatives

There were a few alternatives we looked into for creating the case before settling on the current solution.

* This program creates basic boxes based on any dimension provided by the user.
  - https://www.festi.info/boxes.py/

## Manufacturing Facilities

Most of our testing and production of cases were conducted at the
maker space at Luddy Hall of IU's School of Informatics and Computing
Engineering. Luddy Hall has two laser cutters, both from Trotech; the
Speedy 360 and the Speedy 400. The 360 has a 813x508mm bed while the
400 has a 1000x610mm bed. For our chosen matterial, acrylic, the
machines can cut for matterial thicknesses less than 6mm. To ensure
that the matterial will fit into the laser cutter, ordered acrylic
sheets are limited to the dimentions of the bed minus a quater inch.

## Converting the Design for Laser Cutting

To produce a phyisical copy of our prototypes, we could not simply use
the file in it's SCAD format. To ready the design for laser cutting,
we first hav to export the file as a SVG. One this is done, the file
can be edited in a graphic design program, such as Adobe Illustrator.
Edits reqired to prepare the design include the removal of the
interior fill color of the case components and adjustment of the edges
for cutting. The laser cutter is preset to cut along red lines with a
low thickness. For the prototypes, we used a 0.03 point thickness.

The design must also be correctly scaled to the right size. So far, we
have achived the corect scaling by finding a feature within the design
and find the correct scale factor by measuring it. We are currently
considering the posiblity of using the size of the rectangle the case
fits into; this should speed up the process, since the dimentions can
be viewed in Illustrator by clicking on the artboard tab on the right
vertical tool bar and selecting the artboard setings button. The correct
scale factor can be calculated by dividing the desired lenght by the length
of the artboard. Then select all objects and scale them by the calculated factor.
Once this is done, the artboard must be scaled up as well.

Once all editing is done, the design can be cut. This can be done by
selecting the print option in the graphic design program and clicking
on setings, in Illustrator, this can be found in the lower left corner
of the main print window. If the laser cutter is not selected as the
printer, it will need to be selected. The dimentions in the print
setings will also need to be adjusted if they are smaller than the
size of the design; in Illustrator, the size can be changed under
preferences, which is located directly beneath the printer selection.
The setings window can now be closed and the "print" button on the
main print window can be selected. This will send the file to the
laser cutter as a job.

## Images

Images of the case, place them wher eneeded

The case is shown in Figures
{@fig:case5d0},
{@fig:case5d1},
{@fig:case5d2},
{@fig:case5d5},
{@fig:case5d6},
{@fig:case5d7},
{@fig:case7ad},
{@fig:case7ae},
{@fig:case7af},
{@fig:case7b7},
{@fig:case7b8},
{@fig:case7b9},
{@fig:case7ba},
{@fig:case7cd},
{@fig:case7ce},
{@fig:case7cf},
{@fig:case7d0}.

test +@fig:case7d0.

create proper sentences with refs for images

### Transparent Case

![Case](images/UNADJUSTEDNONRAW_thumb_5d0.jpg){#fig:case5d0 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_5d1.jpg){#fig:case5d1 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_5d2.jpg){#fig:case5d2 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_5d5.jpg){#fig:case5d5 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_5d6.jpg){#fig:case5d6 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_5d7.jpg){#fig:case5d7 with=50%}

### Red Case

![Case](images/UNADJUSTEDNONRAW_thumb_7ad.jpg){#fig:case7ad with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7ae.jpg){#fig:case7ae with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7af.jpg){#fig:case7af with=50%}

### Balck Case

![Case](images/UNADJUSTEDNONRAW_thumb_7b7.jpg){#fig:case7b7 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7b8.jpg){#fig:case7b8 with=50%} 

![Case](images/UNADJUSTEDNONRAW_thumb_7b9.jpg){#fig:case7b9 with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7ba.jpg){#fig:case7ba with=50%}

## Exhibit

Exhibit at make vention, urls, and so forth, describe what it is

![Case](images/UNADJUSTEDNONRAW_thumb_7cd.jpg){#fig:case7cd with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7ce.jpg){#fig:case7ce with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7cf.jpg){#fig:case7cf with=50%}

![Case](images/UNADJUSTEDNONRAW_thumb_7d0.jpg){#fig:case7d0 with=50%}


## Product

Here is the progression of our design, from the first prototype to our
most recent model, as well as a link to the .scad and .svg files for
the most recent case designs:

* <https://github.com/cloudmesh-community/case/tree/master/design/openscadfiles>

COMMENT: Not sure if I should put anything else in this section

The case si shown in Figures {@fig:p1}, {@fig:p2}, {@fig:p3}, {@fig:p4}, {@fig:p5}.

![Prototype 1](images/prototype1.jpg){#fig:p1}

![Prototype 2](images/prototype2.jpg){#fig:p2}

![Prototype 3](images/prototype3.jpg){#fig:p3}

![Prototype 4](images/prototype4.1.jpg){#fig:p4}

![Prototype 4](images/prototype4.2.jpg){#fig:p5}

### Cloudmesh Pi Cluster in a Box

Old:

This section describes the design of the box in which we package the cluster ready for shipping or didtribution to students.

New Text:

We will be creating a box to ship the clusters with the cases that will include everything needed to operate the clusters. The box will have pieces of foam to hold all the pieces in place, and will be shipped with everything in place.

## Future work

We will continue to work on the current design, but it is nearing
completion, and we have a few more related projects for the future:

* 19 inch rack for 40 nodes via bitscope, <https://www.festi.info/boxes.py/Rack19Box>
* Shelf for 5 Pi cases.

COMMENT: Should I add more here?

This section lacks details that you need to add. See the links for
example in the refernces which already have some information. You also
need to create the shelf in some fashipn whhile placing the clusters
in it to demonstrate how the shelf would look like.


Here we test a refernce [@www-test]. They need to be placed in
refernces.bib in bibtex format.


## Refernces

* Other cases are at <https://github.com/cloudmesh-community/book/blob/master/chapters/pi/case.md>
* Website for OpenSCAD http://www.openscad.org/index.html
* Presentation: <https://docs.google.com/presentation/d/1CSdbXzB3QMpkFJ3mvA80TYrvF13VuKiJK-m96QDGw_I>
* Deprecated Draft Document <https://docs.google.com/document/d/1TGBAY631eGSpKAIcp0iVtK5Ns_-AA-n7dX7MmIVgFvw/edit>


