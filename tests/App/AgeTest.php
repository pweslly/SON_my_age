<?php
#https://www.youtube.com/watch?v=sMawXNUAgog
#https://github.com/wesleywillians/myage
# Parei no video 32:38
namespace Tests\App;
use \PHPUnit\Framework\TestCase;
class AgeTest extends TestCase {
    public function testCalculateAge(){
      $today = new \DateTime();
      $dob = new \DateTime();
      $dob->setDate(1984,9,8);
      
      $age = new \App\Age($dob, $today);     
      $this->assertEquals($age->calculate(),34);
    }
}