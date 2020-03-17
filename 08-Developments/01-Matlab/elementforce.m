##############################################################
## internal forces of element
##
## usage: N_elem = elementforce ( EA, h, ne, u, xi )
## parameters: 
##             EA        ... Material parameters
##             h         ... element length
##             ne        ... degrees of freedom per element
##             u         ... nodal displacements
##             xi        ... local coordinate for evaluation
##             
##############################################################

function N_elem = elementforce ( vis, h, ne, u, xi )

##############################################################

  ## Get value of B-matrix at point xi
  B = bmatrix( xi, h, ne );
  ## evaluate force
  N_elem = 2 * vis * B * u;

endfunction
##############################################################
