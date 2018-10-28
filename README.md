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

## Design of the Case

Based on these requirements we designing a Raspberry PI Case for five
PI's out of laser cut sheets with the goals of keeping the design as
simple as possible, using few parts as to minimize production costs,
allowing for easy assembly without screws or glue, while making it
structurally sound. Furthermore, we allow reproducibility through an
open source design.

Two major innovations were included into the design to address the
requirement of not using screws and glue:

1. a peg and slot system to easily lock in perpendicularly
2. an interlock system based on cutouts and rectangular wholes so the
peaces fit nicely.

Du to the iterative design process including the programatic design plans,
build, test, and analyze phase and its iteration The final design was
refined over time addressing issues that were discovered during the
actual assembly.

Although our design does not require it, we recommend to put some
strong rubber bands around the case before transporting it between
home and school as preventive measurement. Cushioning the case during
the transport in the bag for example with cloth material is not
needed, but is recommended just in case.


## Manufacturing Facilities

We used two different cutters, both from Trotech. This includes the
Speedy 360 and the Speedy 400. The Speedy 360 has a 813x508mm bed
while the 400 has a 1000x610mm bed. Acrylic material on these laser
cutters can be cut up to 6mm. To ensure that the material will fit
into the laser cutter, ordered acrylic sheets are limited to the
dimensions of the bed minus a quater inch. The laser cutter has an
influence on our layout of the design. If you have laser cutters with
a different bed size, please make appropriate modifications of the
layout of the parts for the case.


### Material

The laser cut parts utilize 3mm cut-to-size acrylic. Although thicker
material would be more stable, it is not as suitable as its weight is
more and it ias also more expensive. Thus a decision has been made to
stick with the 3mm as it is lighter during the transport. It can be
purchased for ex ample from 

* <https://www.tapplastics.com/product/plastics/cut_to_size_plastic>.

The acrylic material may either be cast or extruded. Choosing cast
acrylic will give a higher quality in color and engraving but it is
also more expensive.  A single case will need the following
dimensions:

* 21 3/16in x 15in

or in cm runded up to the next cm

& 54cm x 39 cm

The cost for a single cluster would be based on material choices:

* Extruded Acrylic (Clear): $11.16
* Cast Acrylic (Clear): $16.41
* Cast Acrylic (Transparent Colors): $18.81

This is considerable cheaper than buying cases individually as they
typically are sold for about $10 a Pi but do not include the
encasement for the power and network equipment.

To build 10 cases that fit on the larger Trotech laser cutter we need
to order the following while using extruded acrylic:

* :o: provide concreate order information


## Converting the Design for Laser Cutting

To produce a physical copy of our prototypes, we could not simply use
the file in it's SCAD format. To ready the design for laser cutting,
we first hav to export the file as a SVG. One this is done, the file
can be edited in a graphic design program, such as Adobe Illustrator.
Edits required to prepare the design include the removal of the
interior fill color of the case components and adjustment of the edges
for cutting. The laser cutter is preset to cut along red lines with a
low thickness. For the prototypes, we used a 0.03 point thickness.

The design must also be correctly scaled to the right size. So far, we
have achieved the correct scaling by finding a feature within the
design and find the correct scale factor by measuring it. We are
currently considering the possibility of using the size of the
rectangle the case fits into; this should speed up the process, since
the dimensions can be viewed in Illustrator by clicking on the
artboard tab on the right vertical tool bar and selecting the artboard
settings button. The correct scale factor can be calculated by
dividing the desired length by the length of the artboard. Then select
all objects and scale them by the calculated factor.  Once this is
done, the artboard must be scaled up as well.

Once all editing is done, the design can be cut. This can be done by
selecting the print option in the graphic design program and clicking
on settings, in Illustrator, this can be found in the lower left corner
of the main print window. If the laser cutter is not selected as the
printer, it will need to be selected. The dimensions in the print
settings will also need to be adjusted if they are smaller than the
size of the design; in Illustrator, the size can be changed under
preferences, which is located directly beneath the printer selection.
The settings window can now be closed and the *print* button on the
main print window can be selected. This will send the file to the
laser cutter as a job.

### Material Needed

This section only contains the material needed for the case. The
components and material for the electronic parts to build the cluster
are located at

### Assembly Instructions

:o:

## Community Outreach

As part of this activity, we exhibited the Cluster at a local maker
fare called Makevention [???]. During that exhibit we got a lot of interest
in the Pi cluster activities and the Cloud Computing course [???] taught at
Indiana University.

## Future work

Future Design Activities include:

**Cluster Shelf or Rack:** To accomodate larger clusters in the class
setting a shelf is proposed in which we *place* the miniclusters while
attaching it through a power distribution bar and a large network
switch to integrate the individual clusters into the larger
cluster. Furthermore we want to create a product in a box called
*Cloudmesh Pi Cluster* that we can give to students so they can
assemble such a cluster themself, or order the parts directly from us
and we ship the parts and the cluster case to them.

**Product Box:** It is useful to be able to distribute such a cluster
as a Kit, either distributed by us or others. For this we need to
designa shipping box that includes all parts of a five node cluster
including an online instruction manual and an artful product label.

**Bitscope Rack:** We have also access to a 19 inch rack based on:

* 19 inch rack for 40 nodes via bitscope, <https://www.festi.info/boxes.py/Rack19Box>

We like to create a rack that containes 5 such clusters holding all
together 200 Raspberry Pis.

**40 node case:** We like to design a 40 node case in 19 inch rack
format from laser cut material

**Dense joints**: we could design a future case with tighter joints in
mind such as projected by the following program that creates basic
boxes based on any dimension provided by the user.

* <https://www.festi.info/boxes.py/>


## Refernces

* Other cases are at <https://github.com/cloudmesh-community/book/blob/master/chapters/pi/case.md>
* Website for OpenSCAD http://www.openscad.org/index.html
* Presentation: <https://docs.google.com/presentation/d/1CSdbXzB3QMpkFJ3mvA80TYrvF13VuKiJK-m96QDGw_I>
* Deprecated Draft Document <https://docs.google.com/document/d/1TGBAY631eGSpKAIcp0iVtK5Ns_-AA-n7dX7MmIVgFvw/edit>


## Images

Images of the case, place them where needed

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


## Product Overview

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

