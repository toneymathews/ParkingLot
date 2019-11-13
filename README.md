<b>Parking Lot Application</b>

<b>Problem Statement:</b> Design and build an application for a parking lot.

<table>
  <tr>
    <th>Classes</th>
    <th>Parking Lot</th> 
    <th>Parking Level</th>
    <th>Parking Space</th>
  </tr>
  <tr>
    <td>Relationship</td>
    <td>A parking lot has several parking levels</td> 
    <td>A parking level has several parking spaces</td>
    <td>Parking space is contained within a parking level and a parking lot</td>
  </tr>
  <tr>
    <td>Attributes defined at initialization</td>
    <td>name</td>
    <td>name, parkinglot</td>
    <td>name, parkinglevel</td>
  </tr>
  <tr>
    <td>Instance Methods</td>
    <td>
       <ol>
        <li>parkinglevels (returns array of parking level objects in a lot)</li>
        <li>names_parkinglevels (returns array of names of parking levels</li>
        <li>parkingspaces (returns array of parking space objects in a lot)</li>
        <li>names_parkingspaces (returns array of names of parking spaces)</li>
     </ol>
   </td>
   <td>
       <ol>
        <li>parkingspaces (returns array of parking space objects in the lot)</li>
        <li>names_parkingspaces (returns array of names of parking space objects)</li>
       </ol>
  </td>
  <td>parkinglot (returns the parking lot to which it belongs to)</td>
 </tr>
</table>

<b>List of Files</b>
<table>
  <tr>
    <th>File name</th>
    <th>Purpose</th> 
  </tr>
  <tr>
    <td>ParkingLot.rb</td>
    <td>Ruby file containing above listed classes</td> 
  </tr>
  <tr>
    <td>seeddata_ParkingLot.rb</td>
    <td>Seed data that was loaded to ensure classes work as expected</td> 
  </tr>
    <tr>
    <td>test_ParkingLot.rb</td>
    <td>Unit tests written in MiniTest</td> 
  </tr>
    <tr>
    <td>testdata_ParkingLot.rb</td>
    <td>Yaml file used for unit testing</td> 
  </tr>
  </table>

