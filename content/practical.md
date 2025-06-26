---
title: "Practical Information"
date: 2025-06-26
draft: false
---

## Date

**April 17th, 2026**

## Venue

**UAntwerp Stadscampus**  
Building C, Aula C.001  
Prinsstraat 13  
Antwerp, Belgium

*Map will be added soon*

## Registration

Registration is free but required. Please fill out the form below to secure your spot.

<div class="form-container">
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST" class="conference-form" id="registration-form">
  <h3>Conference Registration</h3>
  
  <div class="form-group">
    <label for="name">Full Name *</label>
    <input type="text" id="name" name="name" required>
  </div>
  
  <div class="form-group">
    <label for="email">Email Address *</label>
    <input type="email" id="email" name="email" required>
  </div>
  
  <div class="form-group">
    <label for="affiliation">Institution/Organization *</label>
    <input type="text" id="affiliation" name="affiliation" required>
  </div>
  
  <div class="form-group">
    <label for="position">Position/Title</label>
    <input type="text" id="position" name="position">
  </div>
  
  <div class="form-group">
    <label for="dietary">Dietary Requirements</label>
    <textarea id="dietary" name="dietary" rows="3" placeholder="Please specify any dietary restrictions or allergies"></textarea>
  </div>
  
  <div class="form-group">
    <label for="networking">
      <input type="checkbox" id="networking" name="networking" value="yes">
      I'm interested in networking opportunities
    </label>
  </div>
  
  <input type="hidden" name="_subject" value="Flanders Nanopore Day 2026 - Registration">
  <input type="hidden" name="_next" value="https://nanoporeflanders.be/practical/#registration-success">
  
  <button type="submit" class="submit-btn">Register Now</button>
</form>

<div id="registration-success" class="success-message" style="display: none;">
  <h3>Registration Successful!</h3>
  <p>Thank you for registering for Flanders Nanopore Day 2026. You will receive a confirmation email shortly.</p>
</div>
</div>

## Abstract Submission

Submit your abstract for consideration as a poster or oral presentation.

<div class="form-container">
<form action="https://formspree.io/f/YOUR_ABSTRACT_FORM_ID" method="POST" class="conference-form" id="abstract-form">
  <h3>Abstract Submission</h3>
  
  <div class="form-group">
    <label for="abs-name">Presenting Author *</label>
    <input type="text" id="abs-name" name="presenting_author" required>
  </div>
  
  <div class="form-group">
    <label for="abs-email">Email Address *</label>
    <input type="email" id="abs-email" name="email" required>
  </div>
  
  <div class="form-group">
    <label for="abs-affiliation">Institution/Organization *</label>
    <input type="text" id="abs-affiliation" name="affiliation" required>
  </div>
  
  <div class="form-group">
    <label for="abs-title">Abstract Title *</label>
    <input type="text" id="abs-title" name="abstract_title" required>
  </div>
  
  <div class="form-group">
    <label for="abs-authors">All Authors *</label>
    <textarea id="abs-authors" name="all_authors" rows="3" placeholder="List all authors with affiliations (e.g., John Smith¹, Jane Doe²)" required></textarea>
  </div>
  
  <div class="form-group">
    <label for="abs-text">Abstract Text *</label>
    <textarea id="abs-text" name="abstract_text" rows="8" placeholder="Maximum 300 words" required maxlength="2000"></textarea>
    <small>Maximum 300 words</small>
  </div>
  
  <div class="form-group">
    <label for="presentation-type">Preferred Presentation Type *</label>
    <select id="presentation-type" name="presentation_type" required>
      <option value="">Select presentation type</option>
      <option value="poster">Poster Presentation</option>
      <option value="oral">Oral Presentation</option>
      <option value="either">Either (poster or oral)</option>
    </select>
  </div>
  
  <div class="form-group">
    <label for="keywords">Keywords</label>
    <input type="text" id="keywords" name="keywords" placeholder="Separate keywords with commas">
  </div>
  
  <input type="hidden" name="_subject" value="Flanders Nanopore Day 2026 - Abstract Submission">
  <input type="hidden" name="_next" value="https://nanoporeflanders.be/practical/#abstract-success">
  
  <button type="submit" class="submit-btn">Submit Abstract</button>
</form>

<div id="abstract-success" class="success-message" style="display: none;">
  <h3>Abstract Submitted Successfully!</h3>
  <p>Thank you for your abstract submission. You will receive a confirmation email and notification about acceptance status.</p>
</div>
</div>

## Contact

For questions, please contact us at: [nanoporeday@uantwerpen.be](mailto:nanoporeday@uantwerpen.be)
